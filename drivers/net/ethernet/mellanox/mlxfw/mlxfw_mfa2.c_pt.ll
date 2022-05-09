; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.mlxfw_mfa2_tlv = type { i8, i8, i16, [0 x i8] }
%struct.mlxfw_mfa2_file = type { ptr, ptr, i16, ptr, i16, ptr, i32 }
%struct.xz_buf = type { ptr, i32, i32, ptr, i32, i32 }
%struct.mlxfw_mfa2_component = type { i16, i32, ptr }
%struct.mlxfw_mfa2_comp_data = type { %struct.mlxfw_mfa2_component, [0 x i8] }

@mlxfw_mfa2_fingerprint = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MLNX.MFA2.XZ.00!\00", [47 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013mlxfw_mfa2: Could not parse package descriptor TLV\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlxfw_mfa2_file_init\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c\00", [47 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_init._entry_ptr = internal global ptr @mlxfw_mfa2_file_init._entry, section ".printk_index", align 4
@mlxfw_mfa2_file_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013mlxfw_mfa2: First TLV is not of valid multi type\0A\00", [44 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_init._entry_ptr.5 = internal global ptr @mlxfw_mfa2_file_init._entry.3, section ".printk_index", align 4
@mlxfw_mfa2_file_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_init._entry_ptr.7 = internal global ptr @mlxfw_mfa2_file_init._entry.6, section ".printk_index", align 4
@mlxfw_mfa2_file_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013mlxfw_mfa2: First device TLV is not valid\0A\00", [51 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_init._entry_ptr.10 = internal global ptr @mlxfw_mfa2_file_init._entry.8, section ".printk_index", align 4
@mlxfw_mfa2_file_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013mlxfw_mfa2: Component block is out side the file\0A\00", [44 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_init._entry_ptr.13 = internal global ptr @mlxfw_mfa2_file_init._entry.11, section ".printk_index", align 4
@mlxfw_mfa2_file_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013mlxfw_mfa2: Component block size is too big\0A\00", [49 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_init._entry_ptr.16 = internal global ptr @mlxfw_mfa2_file_init._entry.14, section ".printk_index", align 4
@mlxfw_mfa2_file_component_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013mlxfw_mfa2: Component could not be reached in CB\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlxfw_mfa2_file_component_get\00", [34 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_component_get._entry_ptr = internal global ptr @mlxfw_mfa2_file_component_get._entry, section ".printk_index", align 4
@mlxfw_mfa2_comp_magic = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"#BIN.COMPONENT!#\00", [47 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_component_get._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013mlxfw_mfa2: Component has wrong magic\0A\00", [55 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_component_get._entry_ptr.21 = internal global ptr @mlxfw_mfa2_file_component_get._entry.19, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlxfw_mfa2_file_validate.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mlxfw\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlxfw_mfa2_file_validate\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Validating file\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mlxfw_mfa2: Validating file\0A\00", [35 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013mlxfw_mfa2: Device TLV error\0A\00", [32 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_validate._entry_ptr = internal global ptr @mlxfw_mfa2_file_validate._entry, section ".printk_index", align 4
@mlxfw_mfa2_file_validate._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_validate._entry_ptr.28 = internal global ptr @mlxfw_mfa2_file_validate._entry.27, section ".printk_index", align 4
@mlxfw_mfa2_file_dev_validate.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mlxfw_mfa2_file_dev_validate\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Device %d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlxfw_mfa2: Device %d\0A\00", [41 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_dev_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013mlxfw_mfa2: Device %d is not a valid TLV error\0A\00", [46 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_dev_validate._entry_ptr = internal global ptr @mlxfw_mfa2_file_dev_validate._entry, section ".printk_index", align 4
@mlxfw_mfa2_file_dev_validate._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013mlxfw_mfa2: Device %d does not have PSID\0A\00", [52 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_dev_validate._entry_ptr.35 = internal global ptr @mlxfw_mfa2_file_dev_validate._entry.33, section ".printk_index", align 4
@mlxfw_mfa2_file_dev_validate._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013mlxfw_mfa2: Device %d PSID TLV is not valid\0A\00", [49 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_dev_validate._entry_ptr.38 = internal global ptr @mlxfw_mfa2_file_dev_validate._entry.36, section ".printk_index", align 4
@mlxfw_mfa2_file_dev_validate.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.29, ptr @.str.2, ptr @.str.39, i8 0, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  -- Device PSID \00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_dev_validate._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.29, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013mlxfw_mfa2: Device %d has no components\0A\00", [53 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_dev_validate._entry_ptr.43 = internal global ptr @mlxfw_mfa2_file_dev_validate._entry.41, section ".printk_index", align 4
@mlxfw_mfa2_file_dev_validate._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.29, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013mlxfw_mfa2: Device %d COMPONENT_PTR TLV is not valid\0A\00", [40 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_dev_validate._entry_ptr.46 = internal global ptr @mlxfw_mfa2_file_dev_validate._entry.44, section ".printk_index", align 4
@mlxfw_mfa2_file_dev_validate.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.29, ptr @.str.2, ptr @.str.47, i8 0, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  -- Component index %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mlxfw_mfa2:   -- Component index %d\0A\00", [59 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_tlv_multi_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013mlxfw_mfa2: Multi has invalid child\00", [58 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlxfw_mfa2_tlv_multi_validate\00", [34 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_tlv_multi_validate._entry_ptr = internal global ptr @mlxfw_mfa2_tlv_multi_validate._entry, section ".printk_index", align 4
@mlxfw_mfa2_file_comp_validate.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlxfw_mfa2_file_comp_validate\00", [34 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Component %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlxfw_mfa2: Component %d\0A\00", [38 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_comp_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.51, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013mlxfw_mfa2: Component %d is not a valid TLV error\0A\00", [43 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_comp_validate._entry_ptr = internal global ptr @mlxfw_mfa2_file_comp_validate._entry, section ".printk_index", align 4
@mlxfw_mfa2_file_comp_validate._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013mlxfw_mfa2: Component descriptor %d multi TLV error\0A\00", [41 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_comp_validate._entry_ptr.57 = internal global ptr @mlxfw_mfa2_file_comp_validate._entry.55, section ".printk_index", align 4
@mlxfw_mfa2_file_comp_validate._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.51, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013mlxfw_mfa2: Component %d does not have a valid descriptor\0A\00", [35 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_comp_validate._entry_ptr.60 = internal global ptr @mlxfw_mfa2_file_comp_validate._entry.58, section ".printk_index", align 4
@mlxfw_mfa2_file_comp_validate.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.51, ptr @.str.2, ptr @.str.61, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"  -- Component type %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mlxfw_mfa2:   -- Component type %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_comp_validate.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.51, ptr @.str.2, ptr @.str.63, i8 0, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"  -- Offset 0x%llx and size %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mlxfw_mfa2:   -- Offset 0x%llx and size %d\0A\00", [52 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_cb_offset_xz._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013mlxfw_mfa2: xz section too short\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mlxfw_mfa2_file_cb_offset_xz\00", [35 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_file_cb_offset_xz._entry_ptr = internal global ptr @mlxfw_mfa2_file_cb_offset_xz._entry, section ".printk_index", align 4
@mlxfw_mfa2_xz_dec_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013mlxfw_mfa2: xz no memory\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlxfw_mfa2_xz_dec_run\00", [42 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_xz_dec_run._entry_ptr = internal global ptr @mlxfw_mfa2_xz_dec_run._entry, section ".printk_index", align 4
@mlxfw_mfa2_xz_dec_run._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013mlxfw_mfa2: xz file corrupted\0A\00", [63 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_xz_dec_run._entry_ptr.71 = internal global ptr @mlxfw_mfa2_xz_dec_run._entry.69, section ".printk_index", align 4
@mlxfw_mfa2_xz_dec_run._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.2, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013mlxfw_mfa2: xz format not found\0A\00", [61 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_xz_dec_run._entry_ptr.74 = internal global ptr @mlxfw_mfa2_xz_dec_run._entry.72, section ".printk_index", align 4
@mlxfw_mfa2_xz_dec_run._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.68, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013mlxfw_mfa2: unsupported xz option\0A\00", [59 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_xz_dec_run._entry_ptr.77 = internal global ptr @mlxfw_mfa2_xz_dec_run._entry.75, section ".printk_index", align 4
@mlxfw_mfa2_xz_dec_run._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.68, ptr @.str.2, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013mlxfw_mfa2: xz dictionary too small\0A\00", [57 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_xz_dec_run._entry_ptr.80 = internal global ptr @mlxfw_mfa2_xz_dec_run._entry.78, section ".printk_index", align 4
@mlxfw_mfa2_xz_dec_run._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.68, ptr @.str.2, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013mlxfw_mfa2: xz error %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_xz_dec_run._entry_ptr.83 = internal global ptr @mlxfw_mfa2_xz_dec_run._entry.81, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.84 = private unnamed_addr constant [23 x i8] c"mlxfw_mfa2_fingerprint\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 78, i32 17 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 278, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 284, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 294, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 300, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 311, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 317, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 560, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [22 x i8] c"mlxfw_mfa2_comp_magic\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 82, i32 17 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 566, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 230, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 236, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 249, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 124, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 128, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 139, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 145, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 149, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 160, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 173, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 178, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 104, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 193, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 197, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 207, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 213, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 217, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 218, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 454, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 405, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 408, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 411, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 414, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 417, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.310 = private constant [52 x i8] c"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 420, i32 3 }
@llvm.compiler.used = appending global [102 x ptr] [ptr @mlxfw_mfa2_file_cb_offset_xz._entry, ptr @mlxfw_mfa2_file_cb_offset_xz._entry_ptr, ptr @mlxfw_mfa2_file_comp_validate._entry, ptr @mlxfw_mfa2_file_comp_validate._entry.55, ptr @mlxfw_mfa2_file_comp_validate._entry.58, ptr @mlxfw_mfa2_file_comp_validate._entry_ptr, ptr @mlxfw_mfa2_file_comp_validate._entry_ptr.57, ptr @mlxfw_mfa2_file_comp_validate._entry_ptr.60, ptr @mlxfw_mfa2_file_component_get._entry, ptr @mlxfw_mfa2_file_component_get._entry.19, ptr @mlxfw_mfa2_file_component_get._entry_ptr, ptr @mlxfw_mfa2_file_component_get._entry_ptr.21, ptr @mlxfw_mfa2_file_dev_validate._entry, ptr @mlxfw_mfa2_file_dev_validate._entry.33, ptr @mlxfw_mfa2_file_dev_validate._entry.36, ptr @mlxfw_mfa2_file_dev_validate._entry.41, ptr @mlxfw_mfa2_file_dev_validate._entry.44, ptr @mlxfw_mfa2_file_dev_validate._entry_ptr, ptr @mlxfw_mfa2_file_dev_validate._entry_ptr.35, ptr @mlxfw_mfa2_file_dev_validate._entry_ptr.38, ptr @mlxfw_mfa2_file_dev_validate._entry_ptr.43, ptr @mlxfw_mfa2_file_dev_validate._entry_ptr.46, ptr @mlxfw_mfa2_file_init._entry, ptr @mlxfw_mfa2_file_init._entry.11, ptr @mlxfw_mfa2_file_init._entry.14, ptr @mlxfw_mfa2_file_init._entry.3, ptr @mlxfw_mfa2_file_init._entry.6, ptr @mlxfw_mfa2_file_init._entry.8, ptr @mlxfw_mfa2_file_init._entry_ptr, ptr @mlxfw_mfa2_file_init._entry_ptr.10, ptr @mlxfw_mfa2_file_init._entry_ptr.13, ptr @mlxfw_mfa2_file_init._entry_ptr.16, ptr @mlxfw_mfa2_file_init._entry_ptr.5, ptr @mlxfw_mfa2_file_init._entry_ptr.7, ptr @mlxfw_mfa2_file_validate._entry, ptr @mlxfw_mfa2_file_validate._entry.27, ptr @mlxfw_mfa2_file_validate._entry_ptr, ptr @mlxfw_mfa2_file_validate._entry_ptr.28, ptr @mlxfw_mfa2_tlv_multi_validate._entry, ptr @mlxfw_mfa2_tlv_multi_validate._entry_ptr, ptr @mlxfw_mfa2_xz_dec_run._entry, ptr @mlxfw_mfa2_xz_dec_run._entry.69, ptr @mlxfw_mfa2_xz_dec_run._entry.72, ptr @mlxfw_mfa2_xz_dec_run._entry.75, ptr @mlxfw_mfa2_xz_dec_run._entry.78, ptr @mlxfw_mfa2_xz_dec_run._entry.81, ptr @mlxfw_mfa2_xz_dec_run._entry_ptr, ptr @mlxfw_mfa2_xz_dec_run._entry_ptr.71, ptr @mlxfw_mfa2_xz_dec_run._entry_ptr.74, ptr @mlxfw_mfa2_xz_dec_run._entry_ptr.77, ptr @mlxfw_mfa2_xz_dec_run._entry_ptr.80, ptr @mlxfw_mfa2_xz_dec_run._entry_ptr.83, ptr @mlxfw_mfa2_fingerprint, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @mlxfw_mfa2_comp_magic, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_fingerprint to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_file_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_file_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_file_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_file_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_file_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_file_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_file_component_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_comp_magic to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_file_component_get._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_file_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_file_validate._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_file_dev_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_file_dev_validate._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_file_dev_validate._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_file_dev_validate._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_file_dev_validate._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_tlv_multi_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_file_comp_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_file_comp_validate._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_file_comp_validate._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_file_cb_offset_xz._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_xz_dec_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_xz_dec_run._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_xz_dec_run._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_xz_dec_run._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_xz_dec_run._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_xz_dec_run._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlxfw_mfa2_check(ptr nocapture noundef readonly %fw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %1)
  %cmp = icmp ult i32 %1, 17
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %3, ptr noundef nonnull dereferenceable(16) @mlxfw_mfa2_fingerprint, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp1 = icmp eq i32 %bcmp, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp1, %if.end ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxfw_mfa2_file_init(ptr noundef %fw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %fw, ptr %call7.i.i, align 8
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %cmp.i.i = icmp ult ptr %3, %add.ptr
  br i1 %cmp.i.i, label %mlxfw_mfa2_valid_ptr.exit.i, label %if.end.err_out.sink.split_crit_edge

if.end.err_out.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.sink.split

mlxfw_mfa2_valid_ptr.exit.i:                      ; preds = %if.end
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %5
  %cmp4.i.i = icmp ugt ptr %add.ptr.i.i, %add.ptr
  br i1 %cmp4.i.i, label %lor.lhs.false.i, label %mlxfw_mfa2_valid_ptr.exit.i.err_out.sink.split_crit_edge

mlxfw_mfa2_valid_ptr.exit.i.err_out.sink.split_crit_edge: ; preds = %mlxfw_mfa2_valid_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.sink.split

lor.lhs.false.i:                                  ; preds = %mlxfw_mfa2_valid_ptr.exit.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  %cmp.i6.i = icmp uge ptr %3, %add.ptr.i
  %cmp4.i8.i = icmp ule ptr %add.ptr.i.i, %add.ptr.i
  %or.cond = select i1 %cmp.i6.i, i1 true, i1 %cmp4.i8.i
  br i1 %or.cond, label %lor.lhs.false.i.err_out.sink.split_crit_edge, label %mlxfw_mfa2_valid_ptr.exit.i.i

lor.lhs.false.i.err_out.sink.split_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.sink.split

mlxfw_mfa2_valid_ptr.exit.i.i:                    ; preds = %lor.lhs.false.i
  %len.i.i = getelementptr i8, ptr %3, i32 18
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %len.i.i, align 1
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 %9
  %cmp4.i.i.i = icmp ugt ptr %add.ptr.i.i.i, %add.ptr
  br i1 %cmp4.i.i.i, label %lor.lhs.false.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i.err_out.sink.split_crit_edge

mlxfw_mfa2_valid_ptr.exit.i.i.err_out.sink.split_crit_edge: ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.sink.split

lor.lhs.false.i.i:                                ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i.i111 = getelementptr i8, ptr %add.ptr, i32 %conv.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i111, i32 -1
  %cmp.i33.i.i = icmp ult ptr %3, %add.ptr1.i.i
  %cmp4.i35.i.i = icmp ugt ptr %add.ptr.i.i.i, %add.ptr1.i.i
  %or.cond.i = select i1 %cmp.i33.i.i, i1 %cmp4.i35.i.i, i1 false
  br i1 %or.cond.i, label %if.end.i.i, label %lor.lhs.false.i.i.err_out.sink.split_crit_edge

lor.lhs.false.i.i.err_out.sink.split_crit_edge:   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.sink.split

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %type.i.i = getelementptr i8, ptr %3, i32 17
  %10 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp.not.i.i = icmp ne i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %7)
  %cmp19.not.i.i = icmp ne i16 %7, 4
  %or.cond1.i = select i1 %cmp.not.i.i, i1 true, i1 %cmp19.not.i.i
  %tobool9.not = icmp eq ptr %add.ptr.i, null
  %or.cond151 = select i1 %or.cond1.i, i1 true, i1 %tobool9.not
  br i1 %or.cond151, label %if.end.i.i.err_out.sink.split_crit_edge, label %if.end16

if.end.i.i.err_out.sink.split_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.sink.split

if.end16:                                         ; preds = %if.end.i.i
  %call17 = tail call ptr @mlxfw_mfa2_tlv_multi_child(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %add.ptr.i) #9
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end16.err_out_crit_edge, label %if.end20

if.end16.err_out_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.end20:                                         ; preds = %if.end16
  %len.i.i114 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call17, i32 0, i32 2
  %12 = ptrtoint ptr %len.i.i114 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %len.i.i114, align 1
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call7.i.i, align 8
  %data.i.i.i115 = getelementptr inbounds %struct.firmware, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %data.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i.i115, align 4
  %cmp.i.i.i116 = icmp ult ptr %17, %call17
  br i1 %cmp.i.i.i116, label %mlxfw_mfa2_valid_ptr.exit.i.i119, label %if.end20.err_out.sink.split_crit_edge

if.end20.err_out.sink.split_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.sink.split

mlxfw_mfa2_valid_ptr.exit.i.i119:                 ; preds = %if.end20
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %15, align 4
  %add.ptr.i.i.i117 = getelementptr i8, ptr %17, i32 %19
  %cmp4.i.i.i118 = icmp ugt ptr %add.ptr.i.i.i117, %call17
  br i1 %cmp4.i.i.i118, label %lor.lhs.false.i.i126, label %mlxfw_mfa2_valid_ptr.exit.i.i119.err_out.sink.split_crit_edge

mlxfw_mfa2_valid_ptr.exit.i.i119.err_out.sink.split_crit_edge: ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i119
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.sink.split

lor.lhs.false.i.i126:                             ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i119
  %conv.i.i120 = zext i16 %13 to i32
  %add.ptr.i.i121 = getelementptr i8, ptr %call17, i32 %conv.i.i120
  %add.ptr1.i.i122 = getelementptr i8, ptr %add.ptr.i.i121, i32 -1
  %cmp.i33.i.i123 = icmp ult ptr %17, %add.ptr1.i.i122
  %cmp4.i35.i.i124 = icmp ugt ptr %add.ptr.i.i.i117, %add.ptr1.i.i122
  %or.cond.i125 = select i1 %cmp.i33.i.i123, i1 %cmp4.i35.i.i124, i1 false
  br i1 %or.cond.i125, label %if.end.i.i133, label %lor.lhs.false.i.i126.err_out.sink.split_crit_edge

lor.lhs.false.i.i126.err_out.sink.split_crit_edge: ; preds = %lor.lhs.false.i.i126
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.sink.split

if.end.i.i133:                                    ; preds = %lor.lhs.false.i.i126
  %type.i.i127 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call17, i32 0, i32 1
  %20 = ptrtoint ptr %type.i.i127 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %type.i.i127, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp.not.i.i128 = icmp ne i8 %21, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 28, i16 %13)
  %cmp19.not.i.i129 = icmp ne i16 %13, 28
  %or.cond1.i130 = select i1 %cmp.not.i.i128, i1 true, i1 %cmp19.not.i.i129
  %data.i.i131 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call17, i32 0, i32 3
  %tobool22.not = icmp eq ptr %data.i.i131, null
  %or.cond152 = select i1 %or.cond1.i130, i1 true, i1 %tobool22.not
  br i1 %or.cond152, label %if.end.i.i133.err_out.sink.split_crit_edge, label %if.end29

if.end.i.i133.err_out.sink.split_crit_edge:       ; preds = %if.end.i.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.sink.split

if.end29:                                         ; preds = %if.end.i.i133
  %call30 = tail call ptr @mlxfw_mfa2_tlv_next(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %add.ptr) #9
  %first_dev = getelementptr inbounds %struct.mlxfw_mfa2_file, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %first_dev to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call30, ptr %first_dev, align 4
  %tobool32.not = icmp eq ptr %call30, null
  br i1 %tobool32.not, label %if.end29.err_out.sink.split_crit_edge, label %if.end39

if.end29.err_out.sink.split_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.sink.split

if.end39:                                         ; preds = %if.end29
  %num_devices = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call17, i32 1, i32 2
  %23 = ptrtoint ptr %num_devices to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %num_devices, align 1
  %dev_count = getelementptr inbounds %struct.mlxfw_mfa2_file, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %dev_count to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %dev_count, align 8
  %call42 = tail call ptr @mlxfw_mfa2_tlv_advance(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call30, i16 noundef zeroext %24) #9
  %first_component = getelementptr inbounds %struct.mlxfw_mfa2_file, ptr %call7.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %first_component to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call42, ptr %first_component, align 4
  %27 = ptrtoint ptr %data.i.i131 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %data.i.i131, align 1
  %component_count = getelementptr inbounds %struct.mlxfw_mfa2_file, ptr %call7.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %component_count to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %component_count, align 8
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %cb_offset = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call17, i32 2
  %32 = ptrtoint ptr %cb_offset to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %cb_offset, align 1
  %sub = add i32 %33, 3
  %and = and i32 %sub, -4
  %add.ptr44 = getelementptr i8, ptr %31, i32 %and
  %cb = getelementptr inbounds %struct.mlxfw_mfa2_file, ptr %call7.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr44, ptr %cb, align 4
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call7.i.i, align 8
  %data.i = getelementptr inbounds %struct.firmware, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ult ptr %38, %add.ptr44
  br i1 %cmp.i, label %mlxfw_mfa2_valid_ptr.exit, label %if.end39.err_out.sink.split_crit_edge

if.end39.err_out.sink.split_crit_edge:            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.sink.split

mlxfw_mfa2_valid_ptr.exit:                        ; preds = %if.end39
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %36, align 4
  %add.ptr.i135 = getelementptr i8, ptr %38, i32 %40
  %cmp4.i = icmp ugt ptr %add.ptr.i135, %add.ptr44
  br i1 %cmp4.i, label %if.end53, label %mlxfw_mfa2_valid_ptr.exit.err_out.sink.split_crit_edge

mlxfw_mfa2_valid_ptr.exit.err_out.sink.split_crit_edge: ; preds = %mlxfw_mfa2_valid_ptr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.sink.split

if.end53:                                         ; preds = %mlxfw_mfa2_valid_ptr.exit
  %cb_archive_size = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call17, i32 3
  %41 = ptrtoint ptr %cb_archive_size to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %cb_archive_size, align 1
  %cb_archive_size54 = getelementptr inbounds %struct.mlxfw_mfa2_file, ptr %call7.i.i, i32 0, i32 6
  %43 = ptrtoint ptr %cb_archive_size54 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %cb_archive_size54, align 8
  %add.ptr57 = getelementptr i8, ptr %add.ptr44, i32 %42
  %add.ptr58 = getelementptr i8, ptr %add.ptr57, i32 -1
  %44 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i, align 4
  %cmp.i137 = icmp ult ptr %45, %add.ptr58
  br i1 %cmp.i137, label %mlxfw_mfa2_valid_ptr.exit141, label %if.end53.err_out.sink.split_crit_edge

if.end53.err_out.sink.split_crit_edge:            ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.sink.split

mlxfw_mfa2_valid_ptr.exit141:                     ; preds = %if.end53
  %46 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %36, align 4
  %add.ptr.i138 = getelementptr i8, ptr %45, i32 %47
  %cmp4.i139 = icmp ugt ptr %add.ptr.i138, %add.ptr58
  br i1 %cmp4.i139, label %if.end66, label %mlxfw_mfa2_valid_ptr.exit141.err_out.sink.split_crit_edge

mlxfw_mfa2_valid_ptr.exit141.err_out.sink.split_crit_edge: ; preds = %mlxfw_mfa2_valid_ptr.exit141
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out.sink.split

if.end66:                                         ; preds = %mlxfw_mfa2_valid_ptr.exit141
  %call67 = tail call fastcc zeroext i1 @mlxfw_mfa2_file_validate(ptr noundef nonnull %call7.i.i)
  br i1 %call67, label %if.end66.cleanup_crit_edge, label %if.end66.err_out_crit_edge

if.end66.err_out_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_out.sink.split:                               ; preds = %mlxfw_mfa2_valid_ptr.exit141.err_out.sink.split_crit_edge, %if.end53.err_out.sink.split_crit_edge, %mlxfw_mfa2_valid_ptr.exit.err_out.sink.split_crit_edge, %if.end39.err_out.sink.split_crit_edge, %if.end29.err_out.sink.split_crit_edge, %if.end.i.i133.err_out.sink.split_crit_edge, %lor.lhs.false.i.i126.err_out.sink.split_crit_edge, %mlxfw_mfa2_valid_ptr.exit.i.i119.err_out.sink.split_crit_edge, %if.end20.err_out.sink.split_crit_edge, %if.end.i.i.err_out.sink.split_crit_edge, %lor.lhs.false.i.i.err_out.sink.split_crit_edge, %mlxfw_mfa2_valid_ptr.exit.i.i.err_out.sink.split_crit_edge, %lor.lhs.false.i.err_out.sink.split_crit_edge, %mlxfw_mfa2_valid_ptr.exit.i.err_out.sink.split_crit_edge, %if.end.err_out.sink.split_crit_edge
  %.str.15.sink = phi ptr [ @.str, %lor.lhs.false.i.err_out.sink.split_crit_edge ], [ @.str, %if.end.err_out.sink.split_crit_edge ], [ @.str, %mlxfw_mfa2_valid_ptr.exit.i.err_out.sink.split_crit_edge ], [ @.str.4, %if.end.i.i.err_out.sink.split_crit_edge ], [ @.str.4, %lor.lhs.false.i.i.err_out.sink.split_crit_edge ], [ @.str.4, %mlxfw_mfa2_valid_ptr.exit.i.i.err_out.sink.split_crit_edge ], [ @.str, %if.end.i.i133.err_out.sink.split_crit_edge ], [ @.str, %lor.lhs.false.i.i126.err_out.sink.split_crit_edge ], [ @.str, %if.end20.err_out.sink.split_crit_edge ], [ @.str, %mlxfw_mfa2_valid_ptr.exit.i.i119.err_out.sink.split_crit_edge ], [ @.str.9, %if.end29.err_out.sink.split_crit_edge ], [ @.str.12, %if.end39.err_out.sink.split_crit_edge ], [ @.str.12, %mlxfw_mfa2_valid_ptr.exit.err_out.sink.split_crit_edge ], [ @.str.15, %if.end53.err_out.sink.split_crit_edge ], [ @.str.15, %mlxfw_mfa2_valid_ptr.exit141.err_out.sink.split_crit_edge ]
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.15.sink) #14
  br label %err_out

err_out:                                          ; preds = %err_out.sink.split, %if.end66.err_out_crit_edge, %if.end16.err_out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end66.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %err_out ], [ %call7.i.i, %if.end66.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxfw_mfa2_tlv_multi_child(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxfw_mfa2_tlv_next(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxfw_mfa2_tlv_advance(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mlxfw_mfa2_file_validate(ptr noundef %mfa2_file) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlxfw_mfa2_file_validate.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlxfw_mfa2_file_validate, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlxfw_mfa2_file_validate.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.25) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev_count = getelementptr inbounds %struct.mlxfw_mfa2_file, ptr %mfa2_file, i32 0, i32 2
  %0 = ptrtoint ptr %dev_count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dev_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp58.not = icmp eq i16 %1, 0
  br i1 %cmp58.not, label %do.end.for.end_crit_edge, label %for.body.preheader

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %do.end
  %first_dev = getelementptr inbounds %struct.mlxfw_mfa2_file, ptr %mfa2_file, i32 0, i32 1
  %2 = ptrtoint ptr %first_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %first_dev, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %tlv.060 = phi ptr [ %call16, %for.inc.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %idx.059 = phi i16 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %tobool5.not = icmp eq ptr %tlv.060, null
  br i1 %tobool5.not, label %for.body.cleanup.sink.split_crit_edge, label %if.end12

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end12:                                         ; preds = %for.body
  %call13 = tail call fastcc zeroext i1 @mlxfw_mfa2_file_dev_validate(ptr noundef %mfa2_file, ptr noundef nonnull %tlv.060, i16 noundef zeroext %idx.059)
  br i1 %call13, label %for.inc, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %if.end12
  %inc = add nuw i16 %idx.059, 1
  %call16 = tail call ptr @mlxfw_mfa2_tlv_next(ptr noundef %mfa2_file, ptr noundef nonnull %tlv.060) #9
  %4 = ptrtoint ptr %dev_count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dev_count, align 4
  %cmp = icmp ult i16 %inc, %5
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %component_count = getelementptr inbounds %struct.mlxfw_mfa2_file, ptr %mfa2_file, i32 0, i32 4
  %6 = ptrtoint ptr %component_count to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %component_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp2061.not = icmp eq i16 %7, 0
  br i1 %cmp2061.not, label %for.end.cleanup_crit_edge, label %for.body22.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body22.preheader:                             ; preds = %for.end
  %first_component = getelementptr inbounds %struct.mlxfw_mfa2_file, ptr %mfa2_file, i32 0, i32 3
  %8 = ptrtoint ptr %first_component to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %first_component, align 4
  br label %for.body22

for.body22:                                       ; preds = %for.inc34.for.body22_crit_edge, %for.body22.preheader
  %tlv.163 = phi ptr [ %call36, %for.inc34.for.body22_crit_edge ], [ %9, %for.body22.preheader ]
  %idx.162 = phi i16 [ %inc35, %for.inc34.for.body22_crit_edge ], [ 0, %for.body22.preheader ]
  %tobool23.not = icmp eq ptr %tlv.163, null
  br i1 %tobool23.not, label %for.body22.cleanup.sink.split_crit_edge, label %if.end30

for.body22.cleanup.sink.split_crit_edge:          ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end30:                                         ; preds = %for.body22
  %call31 = tail call fastcc zeroext i1 @mlxfw_mfa2_file_comp_validate(ptr noundef %mfa2_file, ptr noundef nonnull %tlv.163, i16 noundef zeroext %idx.162)
  br i1 %call31, label %for.inc34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc34:                                        ; preds = %if.end30
  %inc35 = add nuw i16 %idx.162, 1
  %call36 = tail call ptr @mlxfw_mfa2_tlv_next(ptr noundef %mfa2_file, ptr noundef nonnull %tlv.163) #9
  %10 = ptrtoint ptr %component_count to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %component_count, align 4
  %cmp20 = icmp ult i16 %inc35, %11
  br i1 %cmp20, label %for.inc34.for.body22_crit_edge, label %for.inc34.cleanup_crit_edge

for.inc34.cleanup_crit_edge:                      ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc34.for.body22_crit_edge:                   ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body22

cleanup.sink.split:                               ; preds = %for.body22.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc34.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end12.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %for.end.cleanup_crit_edge ], [ false, %cleanup.sink.split ], [ %call31, %for.inc34.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ], [ false, %if.end12.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxfw_mfa2_file_component_count(ptr noundef %mfa2_file, ptr nocapture noundef readonly %psid, i32 noundef %psid_size, ptr nocapture noundef writeonly %p_count) local_unnamed_addr #1 align 64 {
entry:
  %count = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %count) #9
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %count, align 2, !annotation !154
  %conv = trunc i32 %psid_size to i16
  %call = tail call fastcc ptr @mlxfw_mfa2_tlv_dev_get(ptr noundef %mfa2_file, ptr noundef %psid, i16 noundef zeroext %conv)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @mlxfw_mfa2_tlv_multi_child_count(ptr noundef %mfa2_file, ptr noundef nonnull %call, i32 noundef 34, ptr noundef nonnull %count) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %count, align 2
  %conv5 = zext i16 %2 to i32
  %3 = ptrtoint ptr %p_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv5, ptr %p_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %count) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlxfw_mfa2_tlv_dev_get(ptr noundef %mfa2_file, ptr nocapture noundef readonly %psid, i16 noundef zeroext %psid_size) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %first_dev = getelementptr inbounds %struct.mlxfw_mfa2_file, ptr %mfa2_file, i32 0, i32 1
  %0 = ptrtoint ptr %first_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %first_dev, align 4
  %dev_count = getelementptr inbounds %struct.mlxfw_mfa2_file, ptr %mfa2_file, i32 0, i32 2
  %2 = ptrtoint ptr %dev_count to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dev_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp72 = icmp eq i16 %3, 0
  %tobool.not73 = icmp eq ptr %1, null
  %or.cond74 = select i1 %cmp72, i1 true, i1 %tobool.not73
  br i1 %or.cond74, label %entry.cleanup_crit_edge, label %if.end.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %conv10 = zext i16 %psid_size to i32
  br label %if.end

if.end:                                           ; preds = %for.inc.if.end_crit_edge, %if.end.lr.ph
  %idx.076 = phi i32 [ 0, %if.end.lr.ph ], [ %inc, %for.inc.if.end_crit_edge ]
  %dev_tlv.075 = phi ptr [ %1, %if.end.lr.ph ], [ %call26, %for.inc.if.end_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %dev_tlv.075, i32 0, i32 2
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %len.i.i, align 1
  %6 = ptrtoint ptr %mfa2_file to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mfa2_file, align 4
  %data.i.i.i = getelementptr inbounds %struct.firmware, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ult ptr %9, %dev_tlv.075
  br i1 %cmp.i.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mlxfw_mfa2_valid_ptr.exit.i.i:                    ; preds = %if.end
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %11
  %cmp4.i.i.i = icmp ugt ptr %add.ptr.i.i.i, %dev_tlv.075
  br i1 %cmp4.i.i.i, label %lor.lhs.false.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i.cleanup_crit_edge

mlxfw_mfa2_valid_ptr.exit.i.i.cleanup_crit_edge:  ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %dev_tlv.075, i32 -1
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv.i.i
  %cmp.i33.i.i = icmp ult ptr %9, %add.ptr1.i.i
  %cmp4.i35.i.i = icmp ugt ptr %add.ptr.i.i.i, %add.ptr1.i.i
  %or.cond.i = select i1 %cmp.i33.i.i, i1 %cmp4.i35.i.i, i1 false
  br i1 %or.cond.i, label %if.end.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %type.i.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %dev_tlv.075, i32 0, i32 1
  %12 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp.not.i.i = icmp ne i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp19.not.i.i = icmp ne i16 %5, 4
  %or.cond1.i = select i1 %cmp.not.i.i, i1 true, i1 %cmp19.not.i.i
  %data.i.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %dev_tlv.075, i32 0, i32 3
  %tobool2.not = icmp eq ptr %data.i.i, null
  %or.cond69 = select i1 %or.cond1.i, i1 true, i1 %tobool2.not
  br i1 %or.cond69, label %if.end.i.i.cleanup_crit_edge, label %if.end4

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.i
  %call5 = tail call ptr @mlxfw_mfa2_tlv_multi_child_find(ptr noundef %mfa2_file, ptr noundef nonnull %data.i.i, i32 noundef 42, i16 noundef zeroext 0) #9
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %len = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call5, i32 0, i32 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %len, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %psid_size)
  %cmp11.not = icmp eq i16 %15, %psid_size
  br i1 %cmp11.not, label %if.end14, label %if.end8.for.inc_crit_edge

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end14:                                         ; preds = %if.end8
  %16 = ptrtoint ptr %mfa2_file to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mfa2_file, align 4
  %data.i.i.i46 = getelementptr inbounds %struct.firmware, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %data.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i.i46, align 4
  %cmp.i.i.i47 = icmp ult ptr %19, %call5
  br i1 %cmp.i.i.i47, label %mlxfw_mfa2_valid_ptr.exit.i.i50, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mlxfw_mfa2_valid_ptr.exit.i.i50:                  ; preds = %if.end14
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %17, align 4
  %add.ptr.i.i.i48 = getelementptr i8, ptr %19, i32 %21
  %cmp4.i.i.i49 = icmp ugt ptr %add.ptr.i.i.i48, %call5
  br i1 %cmp4.i.i.i49, label %lor.lhs.false.i.i57, label %mlxfw_mfa2_valid_ptr.exit.i.i50.cleanup_crit_edge

mlxfw_mfa2_valid_ptr.exit.i.i50.cleanup_crit_edge: ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i.i57:                              ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i50
  %add.ptr.i.i52 = getelementptr i8, ptr %call5, i32 %conv10
  %add.ptr1.i.i53 = getelementptr i8, ptr %add.ptr.i.i52, i32 -1
  %cmp.i33.i.i54 = icmp ult ptr %19, %add.ptr1.i.i53
  %cmp4.i35.i.i55 = icmp ugt ptr %add.ptr.i.i.i48, %add.ptr1.i.i53
  %or.cond.i56 = select i1 %cmp.i33.i.i54, i1 %cmp4.i35.i.i55, i1 false
  br i1 %or.cond.i56, label %if.end.i.i62, label %lor.lhs.false.i.i57.cleanup_crit_edge

lor.lhs.false.i.i57.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i62:                                     ; preds = %lor.lhs.false.i.i57
  %type.i.i58 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call5, i32 0, i32 1
  %22 = ptrtoint ptr %type.i.i58 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %type.i.i58, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %23)
  %cmp.not.i.i59 = icmp ne i8 %23, 42
  %data.i.i60 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call5, i32 0, i32 3
  %tobool16.not = icmp eq ptr %data.i.i60, null
  %or.cond70 = select i1 %cmp.not.i.i59, i1 true, i1 %tobool16.not
  br i1 %or.cond70, label %if.end.i.i62.cleanup_crit_edge, label %if.end18

if.end.i.i62.cleanup_crit_edge:                   ; preds = %if.end.i.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end.i.i62
  %bcmp = tail call i32 @bcmp(ptr %psid, ptr nonnull %data.i.i60, i32 %conv10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp22 = icmp eq i32 %bcmp, 0
  br i1 %cmp22, label %if.end18.cleanup_crit_edge, label %if.end18.for.inc_crit_edge

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %if.end18.for.inc_crit_edge, %if.end8.for.inc_crit_edge
  %inc = add nuw nsw i32 %idx.076, 1
  %call26 = tail call ptr @mlxfw_mfa2_tlv_next(ptr noundef %mfa2_file, ptr noundef nonnull %dev_tlv.075) #9
  %24 = ptrtoint ptr %dev_count to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %dev_count, align 4
  %conv = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp = icmp uge i32 %inc, %conv
  %tobool.not = icmp eq ptr %call26, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %for.inc.cleanup_crit_edge, label %for.inc.if.end_crit_edge

for.inc.if.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end.i.i62.cleanup_crit_edge, %lor.lhs.false.i.i57.cleanup_crit_edge, %mlxfw_mfa2_valid_ptr.exit.i.i50.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %mlxfw_mfa2_valid_ptr.exit.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.i.i62.cleanup_crit_edge ], [ null, %lor.lhs.false.i.i57.cleanup_crit_edge ], [ null, %if.end14.cleanup_crit_edge ], [ null, %mlxfw_mfa2_valid_ptr.exit.i.i50.cleanup_crit_edge ], [ null, %if.end.i.i.cleanup_crit_edge ], [ null, %lor.lhs.false.i.i.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %mlxfw_mfa2_valid_ptr.exit.i.i.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %data.i.i, %if.end18.cleanup_crit_edge ], [ null, %if.end4.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxfw_mfa2_tlv_multi_child_count(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxfw_mfa2_file_component_get(ptr noundef %mfa2_file, ptr nocapture noundef readonly %psid, i32 noundef %psid_size, i32 noundef %component_index) local_unnamed_addr #1 align 64 {
entry:
  %dec_buf.i = alloca %struct.xz_buf, align 4
  %finished.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = trunc i32 %psid_size to i16
  %call.i = tail call fastcc ptr @mlxfw_mfa2_tlv_dev_get(ptr noundef %mfa2_file, ptr noundef %psid, i16 noundef zeroext %conv.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %conv1.i = trunc i32 %component_index to i16
  %call2.i = tail call ptr @mlxfw_mfa2_tlv_multi_child_find(ptr noundef %mfa2_file, ptr noundef nonnull %call.i, i32 noundef 34, i16 noundef zeroext %conv1.i) #9
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %len.i.i.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call2.i, i32 0, i32 2
  %0 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %len.i.i.i, align 1
  %2 = ptrtoint ptr %mfa2_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfa2_file, align 4
  %data.i.i.i.i = getelementptr inbounds %struct.firmware, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ult ptr %5, %call2.i
  br i1 %cmp.i.i.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i.i, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mlxfw_mfa2_valid_ptr.exit.i.i.i:                  ; preds = %if.end5.i
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %5, i32 %7
  %cmp4.i.i.i.i = icmp ugt ptr %add.ptr.i.i.i.i, %call2.i
  br i1 %cmp4.i.i.i.i, label %lor.lhs.false.i.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i.i.cleanup_crit_edge

mlxfw_mfa2_valid_ptr.exit.i.i.i.cleanup_crit_edge: ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i.i.i:                              ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i.i
  %conv.i.i.i = zext i16 %1 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %call2.i, i32 %conv.i.i.i
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 -1
  %cmp.i33.i.i.i = icmp ult ptr %5, %add.ptr1.i.i.i
  %cmp4.i35.i.i.i = icmp ugt ptr %add.ptr.i.i.i.i, %add.ptr1.i.i.i
  %or.cond.i.i = select i1 %cmp.i33.i.i.i, i1 %cmp4.i35.i.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i.i.i, label %lor.lhs.false.i.i.i.cleanup_crit_edge

lor.lhs.false.i.i.i.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  %type.i.i.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call2.i, i32 0, i32 1
  %8 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %9)
  %cmp.not.i.i.i = icmp ne i8 %9, 34
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %1)
  %cmp19.not.i.i.i = icmp ne i16 %1, 8
  %or.cond1.i.i = select i1 %cmp.not.i.i.i, i1 true, i1 %cmp19.not.i.i.i
  br i1 %or.cond1.i.i, label %if.end.i.i.i.cleanup_crit_edge, label %if.end9.i

if.end.i.i.i.cleanup_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i.i.i
  %component_index10.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call2.i, i32 1, i32 2
  %10 = ptrtoint ptr %component_index10.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %component_index10.i, align 1
  %component_count.i.i = getelementptr inbounds %struct.mlxfw_mfa2_file, ptr %mfa2_file, i32 0, i32 4
  %12 = ptrtoint ptr %component_count.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %component_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %11)
  %cmp.i.i = icmp ult i16 %13, %11
  br i1 %cmp.i.i, label %if.end9.i.cleanup_crit_edge, label %if.end.i.i

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end9.i
  %first_component.i.i = getelementptr inbounds %struct.mlxfw_mfa2_file, ptr %mfa2_file, i32 0, i32 3
  %14 = ptrtoint ptr %first_component.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %first_component.i.i, align 4
  %call.i.i = tail call ptr @mlxfw_mfa2_tlv_advance(ptr noundef %mfa2_file, ptr noundef %15, i16 noundef zeroext %11) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end4.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.i.i:                                      ; preds = %if.end.i.i
  %len.i.i.i.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %len.i.i.i.i, align 1
  %18 = ptrtoint ptr %mfa2_file to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mfa2_file, align 4
  %data.i.i.i.i.i = getelementptr inbounds %struct.firmware, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i = icmp ult ptr %21, %call.i.i
  br i1 %cmp.i.i.i.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i.i.i, label %if.end4.i.i.cleanup_crit_edge

if.end4.i.i.cleanup_crit_edge:                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mlxfw_mfa2_valid_ptr.exit.i.i.i.i:                ; preds = %if.end4.i.i
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %19, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %21, i32 %23
  %cmp4.i.i.i.i.i = icmp ugt ptr %add.ptr.i.i.i.i.i, %call.i.i
  br i1 %cmp4.i.i.i.i.i, label %lor.lhs.false.i.i.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i.i.i.cleanup_crit_edge

mlxfw_mfa2_valid_ptr.exit.i.i.i.i.cleanup_crit_edge: ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i.i.i.i:                            ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i.i.i
  %conv.i.i.i.i = zext i16 %17 to i32
  %add.ptr.i.i.i21.i = getelementptr i8, ptr %call.i.i, i32 %conv.i.i.i.i
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i21.i, i32 -1
  %cmp.i33.i.i.i.i = icmp ult ptr %21, %add.ptr1.i.i.i.i
  %cmp4.i35.i.i.i.i = icmp ugt ptr %add.ptr.i.i.i.i.i, %add.ptr1.i.i.i.i
  %or.cond.i.i.i = select i1 %cmp.i33.i.i.i.i, i1 %cmp4.i35.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.end.i.i.i.i, label %lor.lhs.false.i.i.i.i.cleanup_crit_edge

lor.lhs.false.i.i.i.i.cleanup_crit_edge:          ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i.i
  %type.i.i.i.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %type.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp.not.i.i.i.i = icmp ne i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %17)
  %cmp19.not.i.i.i.i = icmp ne i16 %17, 4
  %or.cond1.i.i.i = select i1 %cmp.not.i.i.i.i, i1 true, i1 %cmp19.not.i.i.i.i
  br i1 %or.cond1.i.i.i, label %if.end.i.i.i.i.cleanup_crit_edge, label %if.end8.i.i

if.end.i.i.i.i.cleanup_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end.i.i.i.i
  %data.i.i.i22.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call.i.i, i32 0, i32 3
  %call9.i.i = tail call ptr @mlxfw_mfa2_tlv_multi_child(ptr noundef %mfa2_file, ptr noundef nonnull %data.i.i.i22.i) #9
  %tobool10.not.i.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not.i.i, label %if.end8.i.i.cleanup_crit_edge, label %if.end12.i.i

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.i.i:                                     ; preds = %if.end8.i.i
  %len.i.i25.i.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call9.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %len.i.i25.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %len.i.i25.i.i, align 1
  %28 = ptrtoint ptr %mfa2_file to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mfa2_file, align 4
  %data.i.i.i26.i.i = getelementptr inbounds %struct.firmware, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %data.i.i.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i.i26.i.i, align 4
  %cmp.i.i.i27.i.i = icmp ult ptr %31, %call9.i.i
  br i1 %cmp.i.i.i27.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i30.i.i, label %if.end12.i.i.cleanup_crit_edge

if.end12.i.i.cleanup_crit_edge:                   ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mlxfw_mfa2_valid_ptr.exit.i.i30.i.i:              ; preds = %if.end12.i.i
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %29, align 4
  %add.ptr.i.i.i28.i.i = getelementptr i8, ptr %31, i32 %33
  %cmp4.i.i.i29.i.i = icmp ugt ptr %add.ptr.i.i.i28.i.i, %call9.i.i
  br i1 %cmp4.i.i.i29.i.i, label %lor.lhs.false.i.i37.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i30.i.i.cleanup_crit_edge

mlxfw_mfa2_valid_ptr.exit.i.i30.i.i.cleanup_crit_edge: ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i.i37.i.i:                          ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i30.i.i
  %conv.i.i31.i.i = zext i16 %27 to i32
  %add.ptr.i.i32.i.i = getelementptr i8, ptr %call9.i.i, i32 %conv.i.i31.i.i
  %add.ptr1.i.i33.i.i = getelementptr i8, ptr %add.ptr.i.i32.i.i, i32 -1
  %cmp.i33.i.i34.i.i = icmp ult ptr %31, %add.ptr1.i.i33.i.i
  %cmp4.i35.i.i35.i.i = icmp ugt ptr %add.ptr.i.i.i28.i.i, %add.ptr1.i.i33.i.i
  %or.cond.i36.i.i = select i1 %cmp.i33.i.i34.i.i, i1 %cmp4.i35.i.i35.i.i, i1 false
  br i1 %or.cond.i36.i.i, label %if.end.i.i44.i.i, label %lor.lhs.false.i.i37.i.i.cleanup_crit_edge

lor.lhs.false.i.i37.i.i.cleanup_crit_edge:        ; preds = %lor.lhs.false.i.i37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i44.i.i:                                 ; preds = %lor.lhs.false.i.i37.i.i
  %type.i.i38.i.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call9.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %type.i.i38.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %type.i.i38.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %35)
  %cmp.not.i.i39.i.i = icmp ne i8 %35, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %27)
  %cmp19.not.i.i40.i.i = icmp ne i16 %27, 16
  %or.cond1.i41.i.i = select i1 %cmp.not.i.i39.i.i, i1 true, i1 %cmp19.not.i.i40.i.i
  %data.i.i42.i.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call9.i.i, i32 0, i32 3
  %tobool.not = icmp eq ptr %data.i.i42.i.i, null
  %or.cond = select i1 %or.cond1.i41.i.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.end.i.i44.i.i.cleanup_crit_edge, label %if.end

if.end.i.i44.i.i.cleanup_crit_edge:               ; preds = %if.end.i.i44.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i44.i.i
  %cb_offset_l = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call9.i.i, i32 3
  %36 = ptrtoint ptr %cb_offset_l to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %cb_offset_l, align 1
  %size = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call9.i.i, i32 4
  %38 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %size, align 1
  %add4 = add i32 %39, 28
  %call5 = tail call noalias ptr @vzalloc(i32 noundef %add4) #15
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %add = add i32 %39, 16
  %data_size = getelementptr inbounds %struct.mlxfw_mfa2_component, ptr %call5, i32 0, i32 1
  %40 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %data_size, align 4
  %identifier = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call9.i.i, i32 1, i32 2
  %41 = ptrtoint ptr %identifier to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %identifier, align 1
  %43 = ptrtoint ptr %call5 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %call5, align 4
  %buff = getelementptr inbounds %struct.mlxfw_mfa2_comp_data, ptr %call5, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dec_buf.i) #9
  %44 = getelementptr inbounds %struct.xz_buf, ptr %dec_buf.i, i32 0, i32 4
  %45 = getelementptr inbounds %struct.xz_buf, ptr %dec_buf.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %finished.i) #9
  %46 = ptrtoint ptr %finished.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %finished.i, align 1, !annotation !154
  %call.i54 = tail call ptr @xz_dec_init(i32 noundef 2, i32 noundef -1) #9
  %tobool.not.i55 = icmp eq ptr %call.i54, null
  br i1 %tobool.not.i55, label %mlxfw_mfa2_file_cb_offset_xz.exit.thread, label %if.end.i56

mlxfw_mfa2_file_cb_offset_xz.exit.thread:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %finished.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dec_buf.i) #9
  br label %err_out

if.end.i56:                                       ; preds = %if.end9
  %47 = getelementptr inbounds %struct.xz_buf, ptr %dec_buf.i, i32 0, i32 3
  %48 = getelementptr inbounds %struct.xz_buf, ptr %dec_buf.i, i32 0, i32 2
  %49 = getelementptr inbounds %struct.xz_buf, ptr %dec_buf.i, i32 0, i32 1
  %cb_archive_size.i = getelementptr inbounds %struct.mlxfw_mfa2_file, ptr %mfa2_file, i32 0, i32 6
  %50 = ptrtoint ptr %cb_archive_size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cb_archive_size.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %48, align 4
  %cb.i = getelementptr inbounds %struct.mlxfw_mfa2_file, ptr %mfa2_file, i32 0, i32 5
  %53 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cb.i, align 4
  %55 = ptrtoint ptr %dec_buf.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %dec_buf.i, align 4
  %56 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %49, align 4
  %57 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %buff, ptr %47, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end14.i.do.body.i_crit_edge, %if.end.i56
  %curr_off.0.i = phi i32 [ 0, %if.end.i56 ], [ %add.i, %if.end14.i.do.body.i_crit_edge ]
  %58 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %44, align 4
  %sub.i = sub i32 %37, %curr_off.0.i
  %59 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %add) #9
  %60 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp2.i = icmp eq i32 %59, 0
  br i1 %cmp2.i, label %do.body.i.mlxfw_mfa2_file_cb_offset_xz.exit_crit_edge, label %if.end4.i

do.body.i.mlxfw_mfa2_file_cb_offset_xz.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlxfw_mfa2_file_cb_offset_xz.exit

if.end4.i:                                        ; preds = %do.body.i
  %call5.i = call fastcc i32 @mlxfw_mfa2_xz_dec_run(ptr noundef nonnull %call.i54, ptr noundef nonnull %dec_buf.i, ptr noundef nonnull %finished.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.mlxfw_mfa2_file_cb_offset_xz.exit.thread63_crit_edge

if.end4.i.mlxfw_mfa2_file_cb_offset_xz.exit.thread63_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlxfw_mfa2_file_cb_offset_xz.exit.thread63

if.end8.i:                                        ; preds = %if.end4.i
  %61 = ptrtoint ptr %finished.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %finished.i, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool9.not.i = icmp eq i8 %62, 0
  br i1 %tobool9.not.i, label %if.end14.i, label %do.end.i

do.end.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #14
  br label %mlxfw_mfa2_file_cb_offset_xz.exit.thread63

if.end14.i:                                       ; preds = %if.end8.i
  %63 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %44, align 4
  %add.i = add i32 %64, %curr_off.0.i
  %cmp17.not.i = icmp eq i32 %add.i, %37
  br i1 %cmp17.not.i, label %if.end14.i.mlxfw_mfa2_file_cb_offset_xz.exit_crit_edge, label %if.end14.i.do.body.i_crit_edge

if.end14.i.do.body.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end14.i.mlxfw_mfa2_file_cb_offset_xz.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlxfw_mfa2_file_cb_offset_xz.exit

mlxfw_mfa2_file_cb_offset_xz.exit.thread63:       ; preds = %do.end.i, %if.end4.i.mlxfw_mfa2_file_cb_offset_xz.exit.thread63_crit_edge
  %err.0.i.ph = phi i32 [ -22, %do.end.i ], [ %call5.i, %if.end4.i.mlxfw_mfa2_file_cb_offset_xz.exit.thread63_crit_edge ]
  call void @xz_dec_end(ptr noundef nonnull %call.i54) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %finished.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dec_buf.i) #9
  br label %err_out

mlxfw_mfa2_file_cb_offset_xz.exit:                ; preds = %if.end14.i.mlxfw_mfa2_file_cb_offset_xz.exit_crit_edge, %do.body.i.mlxfw_mfa2_file_cb_offset_xz.exit_crit_edge
  %65 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %44, align 4
  %66 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add, ptr %45, align 4
  %call21.i = call fastcc i32 @mlxfw_mfa2_xz_dec_run(ptr noundef nonnull %call.i54, ptr noundef nonnull %dec_buf.i, ptr noundef nonnull %finished.i) #9
  call void @xz_dec_end(ptr noundef nonnull %call.i54) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %finished.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dec_buf.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool13.not = icmp eq i32 %call21.i, 0
  br i1 %tobool13.not, label %if.end16, label %mlxfw_mfa2_file_cb_offset_xz.exit.err_out_crit_edge

mlxfw_mfa2_file_cb_offset_xz.exit.err_out_crit_edge: ; preds = %mlxfw_mfa2_file_cb_offset_xz.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.end16:                                         ; preds = %mlxfw_mfa2_file_cb_offset_xz.exit
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %buff, ptr noundef nonnull dereferenceable(16) @mlxfw_mfa2_comp_magic, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp.not = icmp eq i32 %bcmp, 0
  br i1 %cmp.not, label %if.end27, label %if.end16.err_out_crit_edge

if.end16.err_out_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.end27:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr %struct.mlxfw_mfa2_comp_data, ptr %call5, i32 2, i32 0, i32 1
  %data = getelementptr inbounds %struct.mlxfw_mfa2_component, ptr %call5, i32 0, i32 2
  %67 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr, ptr %data, align 4
  br label %cleanup

err_out:                                          ; preds = %if.end16.err_out_crit_edge, %mlxfw_mfa2_file_cb_offset_xz.exit.err_out_crit_edge, %mlxfw_mfa2_file_cb_offset_xz.exit.thread63, %mlxfw_mfa2_file_cb_offset_xz.exit.thread
  %.str.20.sink = phi ptr [ @.str.17, %mlxfw_mfa2_file_cb_offset_xz.exit.thread63 ], [ @.str.17, %mlxfw_mfa2_file_cb_offset_xz.exit.thread ], [ @.str.17, %mlxfw_mfa2_file_cb_offset_xz.exit.err_out_crit_edge ], [ @.str.20, %if.end16.err_out_crit_edge ]
  %err.0 = phi i32 [ %err.0.i.ph, %mlxfw_mfa2_file_cb_offset_xz.exit.thread63 ], [ -22, %mlxfw_mfa2_file_cb_offset_xz.exit.thread ], [ %call21.i, %mlxfw_mfa2_file_cb_offset_xz.exit.err_out_crit_edge ], [ -22, %if.end16.err_out_crit_edge ]
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.20.sink) #14
  call void @vfree(ptr noundef nonnull %call5) #9
  %68 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end27, %if.end.cleanup_crit_edge, %if.end.i.i44.i.i.cleanup_crit_edge, %lor.lhs.false.i.i37.i.i.cleanup_crit_edge, %mlxfw_mfa2_valid_ptr.exit.i.i30.i.i.cleanup_crit_edge, %if.end12.i.i.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %if.end.i.i.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.i.i.cleanup_crit_edge, %mlxfw_mfa2_valid_ptr.exit.i.i.i.i.cleanup_crit_edge, %if.end4.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.end.i.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.i.cleanup_crit_edge, %mlxfw_mfa2_valid_ptr.exit.i.i.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %68, %err_out ], [ %call5, %if.end27 ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end9.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end8.i.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %mlxfw_mfa2_valid_ptr.exit.i.i30.i.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end12.i.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.i.i37.i.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.i44.i.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %mlxfw_mfa2_valid_ptr.exit.i.i.i.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end4.i.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.i.i.i.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.i.i.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %mlxfw_mfa2_valid_ptr.exit.i.i.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end5.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.i.i.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxfw_mfa2_file_component_put(ptr noundef %comp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @vfree(ptr noundef %comp) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxfw_mfa2_file_fini(ptr noundef %mfa2_file) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %mfa2_file) #9
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mlxfw_mfa2_file_dev_validate(ptr noundef %mfa2_file, ptr noundef %dev_tlv, i16 noundef zeroext %dev_idx) unnamed_addr #1 align 64 {
entry:
  %cptr_count = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cptr_count) #9
  %0 = ptrtoint ptr %cptr_count to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %cptr_count, align 2, !annotation !154
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlxfw_mfa2_file_dev_validate.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlxfw_mfa2_file_dev_validate, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %dev_idx to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlxfw_mfa2_file_dev_validate.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.31, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %len.i.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %dev_tlv, i32 0, i32 2
  %1 = ptrtoint ptr %len.i.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %len.i.i, align 1
  %3 = ptrtoint ptr %mfa2_file to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mfa2_file, align 4
  %data.i.i.i = getelementptr inbounds %struct.firmware, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ult ptr %6, %dev_tlv
  br i1 %cmp.i.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i, label %do.end.do.end8_crit_edge

do.end.do.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

mlxfw_mfa2_valid_ptr.exit.i.i:                    ; preds = %do.end
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %8
  %cmp4.i.i.i = icmp ugt ptr %add.ptr.i.i.i, %dev_tlv
  br i1 %cmp4.i.i.i, label %lor.lhs.false.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i.do.end8_crit_edge

mlxfw_mfa2_valid_ptr.exit.i.i.do.end8_crit_edge:  ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

lor.lhs.false.i.i:                                ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i
  %conv.i.i = zext i16 %2 to i32
  %add.ptr.i.i = getelementptr i8, ptr %dev_tlv, i32 %conv.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -1
  %cmp.i33.i.i = icmp ult ptr %6, %add.ptr1.i.i
  %cmp4.i35.i.i = icmp ugt ptr %add.ptr.i.i.i, %add.ptr1.i.i
  %or.cond.i = select i1 %cmp.i33.i.i, i1 %cmp4.i35.i.i, i1 false
  br i1 %or.cond.i, label %if.end.i.i, label %lor.lhs.false.i.i.do.end8_crit_edge

lor.lhs.false.i.i.do.end8_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %type.i.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %dev_tlv, i32 0, i32 1
  %9 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.not.i.i = icmp ne i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %2)
  %cmp19.not.i.i = icmp ne i16 %2, 4
  %or.cond1.i = select i1 %cmp.not.i.i, i1 true, i1 %cmp19.not.i.i
  %data.i.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %dev_tlv, i32 0, i32 3
  %tobool4.not = icmp eq ptr %data.i.i, null
  %or.cond = select i1 %or.cond1.i, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %if.end.i.i.do.end8_crit_edge, label %if.end12

if.end.i.i.do.end8_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end8:                                          ; preds = %if.end.i.i.do.end8_crit_edge, %lor.lhs.false.i.i.do.end8_crit_edge, %mlxfw_mfa2_valid_ptr.exit.i.i.do.end8_crit_edge, %do.end.do.end8_crit_edge
  %conv10 = zext i16 %dev_idx to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv10) #14
  br label %cleanup

if.end12:                                         ; preds = %if.end.i.i
  %call.i = tail call ptr @mlxfw_mfa2_tlv_multi_child(ptr noundef %mfa2_file, ptr noundef nonnull %data.i.i) #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end12
  %idx.013.i = phi i16 [ 0, %if.end12 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %tlv.012.i = phi ptr [ %call.i, %if.end12 ], [ %call4.i, %for.inc.i.for.body.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %tlv.012.i, null
  br i1 %tobool.not.i, label %mlxfw_mfa2_tlv_multi_validate.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add i16 %idx.013.i, 1
  %call4.i = tail call ptr @mlxfw_mfa2_tlv_next(ptr noundef %mfa2_file, ptr noundef nonnull %tlv.012.i) #9
  %11 = ptrtoint ptr %data.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %data.i.i, align 1
  %cmp.not.i = icmp ult i16 %12, %inc.i
  br i1 %cmp.not.i, label %if.end15, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

mlxfw_mfa2_tlv_multi_validate.exit:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #14
  br label %cleanup

if.end15:                                         ; preds = %for.inc.i
  %call16 = tail call ptr @mlxfw_mfa2_tlv_multi_child_find(ptr noundef %mfa2_file, ptr noundef nonnull %data.i.i, i32 noundef 42, i16 noundef zeroext 0) #9
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %do.end21, label %if.end25

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %conv23 = zext i16 %dev_idx to i32
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %conv23) #14
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %len.i.i138 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call16, i32 0, i32 2
  %13 = ptrtoint ptr %len.i.i138 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %len.i.i138, align 1
  %15 = ptrtoint ptr %mfa2_file to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mfa2_file, align 4
  %data.i.i.i139 = getelementptr inbounds %struct.firmware, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %data.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i.i139, align 4
  %cmp.i.i.i140 = icmp ult ptr %18, %call16
  br i1 %cmp.i.i.i140, label %mlxfw_mfa2_valid_ptr.exit.i.i143, label %if.end25.do.end31_crit_edge

if.end25.do.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

mlxfw_mfa2_valid_ptr.exit.i.i143:                 ; preds = %if.end25
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 4
  %add.ptr.i.i.i141 = getelementptr i8, ptr %18, i32 %20
  %cmp4.i.i.i142 = icmp ugt ptr %add.ptr.i.i.i141, %call16
  br i1 %cmp4.i.i.i142, label %lor.lhs.false.i.i150, label %mlxfw_mfa2_valid_ptr.exit.i.i143.do.end31_crit_edge

mlxfw_mfa2_valid_ptr.exit.i.i143.do.end31_crit_edge: ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i143
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

lor.lhs.false.i.i150:                             ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i143
  %conv.i.i144 = zext i16 %14 to i32
  %add.ptr.i.i145 = getelementptr i8, ptr %call16, i32 %conv.i.i144
  %add.ptr1.i.i146 = getelementptr i8, ptr %add.ptr.i.i145, i32 -1
  %cmp.i33.i.i147 = icmp ult ptr %18, %add.ptr1.i.i146
  %cmp4.i35.i.i148 = icmp ugt ptr %add.ptr.i.i.i141, %add.ptr1.i.i146
  %or.cond.i149 = select i1 %cmp.i33.i.i147, i1 %cmp4.i35.i.i148, i1 false
  br i1 %or.cond.i149, label %if.end.i.i155, label %lor.lhs.false.i.i150.do.end31_crit_edge

lor.lhs.false.i.i150.do.end31_crit_edge:          ; preds = %lor.lhs.false.i.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

if.end.i.i155:                                    ; preds = %lor.lhs.false.i.i150
  %type.i.i151 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call16, i32 0, i32 1
  %21 = ptrtoint ptr %type.i.i151 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type.i.i151, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %22)
  %cmp.not.i.i152 = icmp ne i8 %22, 42
  %data.i.i153 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call16, i32 0, i32 3
  %tobool27.not = icmp eq ptr %data.i.i153, null
  %or.cond189 = select i1 %cmp.not.i.i152, i1 true, i1 %tobool27.not
  br i1 %or.cond189, label %if.end.i.i155.do.end31_crit_edge, label %do.body36

if.end.i.i155.do.end31_crit_edge:                 ; preds = %if.end.i.i155
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

do.end31:                                         ; preds = %if.end.i.i155.do.end31_crit_edge, %lor.lhs.false.i.i150.do.end31_crit_edge, %mlxfw_mfa2_valid_ptr.exit.i.i143.do.end31_crit_edge, %if.end25.do.end31_crit_edge
  %conv33 = zext i16 %dev_idx to i32
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %conv33) #14
  br label %cleanup

do.body36:                                        ; preds = %if.end.i.i155
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlxfw_mfa2_file_dev_validate.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlxfw_mfa2_file_dev_validate, %if.then48)) #9
          to label %do.end53 [label %if.then48], !srcloc !153

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %len.i.i138 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %len.i.i138, align 1
  %conv50 = zext i16 %24 to i32
  tail call void @print_hex_dump(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i32 noundef 0, i32 noundef 16, i32 noundef 16, ptr noundef nonnull %data.i.i153, i32 noundef %conv50, i1 noundef zeroext true) #9
  br label %do.end53

do.end53:                                         ; preds = %if.then48, %do.body36
  %call54 = call i32 @mlxfw_mfa2_tlv_multi_child_count(ptr noundef %mfa2_file, ptr noundef nonnull %data.i.i, i32 noundef 34, ptr noundef nonnull %cptr_count) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %do.end53.cleanup_crit_edge

do.end53.cleanup_crit_edge:                       ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end57:                                         ; preds = %do.end53
  %25 = ptrtoint ptr %cptr_count to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %cptr_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp = icmp eq i16 %26, 0
  br i1 %cmp, label %do.end63, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end57
  %27 = ptrtoint ptr %cptr_count to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %cptr_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp70191.not = icmp eq i16 %28, 0
  br i1 %cmp70191.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %conv65 = zext i16 %dev_idx to i32
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv65) #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %cptr_idx.0192 = phi i16 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call72 = call ptr @mlxfw_mfa2_tlv_multi_child_find(ptr noundef %mfa2_file, ptr noundef nonnull %data.i.i, i32 noundef 34, i16 noundef zeroext %cptr_idx.0192) #9
  %tobool73.not = icmp eq ptr %call72, null
  br i1 %tobool73.not, label %for.body.cleanup.loopexit_crit_edge, label %if.end75

for.body.cleanup.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.loopexit

if.end75:                                         ; preds = %for.body
  %len.i.i157 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call72, i32 0, i32 2
  %29 = ptrtoint ptr %len.i.i157 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %len.i.i157, align 1
  %31 = ptrtoint ptr %mfa2_file to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mfa2_file, align 4
  %data.i.i.i158 = getelementptr inbounds %struct.firmware, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %data.i.i.i158 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i.i158, align 4
  %cmp.i.i.i159 = icmp ult ptr %34, %call72
  br i1 %cmp.i.i.i159, label %mlxfw_mfa2_valid_ptr.exit.i.i162, label %if.end75.do.end81_crit_edge

if.end75.do.end81_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end81

mlxfw_mfa2_valid_ptr.exit.i.i162:                 ; preds = %if.end75
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %32, align 4
  %add.ptr.i.i.i160 = getelementptr i8, ptr %34, i32 %36
  %cmp4.i.i.i161 = icmp ugt ptr %add.ptr.i.i.i160, %call72
  br i1 %cmp4.i.i.i161, label %lor.lhs.false.i.i169, label %mlxfw_mfa2_valid_ptr.exit.i.i162.do.end81_crit_edge

mlxfw_mfa2_valid_ptr.exit.i.i162.do.end81_crit_edge: ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i162
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end81

lor.lhs.false.i.i169:                             ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i162
  %conv.i.i163 = zext i16 %30 to i32
  %add.ptr.i.i164 = getelementptr i8, ptr %call72, i32 -1
  %add.ptr1.i.i165 = getelementptr i8, ptr %add.ptr.i.i164, i32 %conv.i.i163
  %cmp.i33.i.i166 = icmp ult ptr %34, %add.ptr1.i.i165
  %cmp4.i35.i.i167 = icmp ugt ptr %add.ptr.i.i.i160, %add.ptr1.i.i165
  %or.cond.i168 = select i1 %cmp.i33.i.i166, i1 %cmp4.i35.i.i167, i1 false
  br i1 %or.cond.i168, label %if.end.i.i176, label %lor.lhs.false.i.i169.do.end81_crit_edge

lor.lhs.false.i.i169.do.end81_crit_edge:          ; preds = %lor.lhs.false.i.i169
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end81

if.end.i.i176:                                    ; preds = %lor.lhs.false.i.i169
  %type.i.i170 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call72, i32 0, i32 1
  %37 = ptrtoint ptr %type.i.i170 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %type.i.i170, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %38)
  %cmp.not.i.i171 = icmp ne i8 %38, 34
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %30)
  %cmp19.not.i.i172 = icmp ne i16 %30, 8
  %or.cond1.i173 = select i1 %cmp.not.i.i171, i1 true, i1 %cmp19.not.i.i172
  %data.i.i174 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call72, i32 0, i32 3
  %tobool77.not = icmp eq ptr %data.i.i174, null
  %or.cond190 = select i1 %or.cond1.i173, i1 true, i1 %tobool77.not
  br i1 %or.cond190, label %if.end.i.i176.do.end81_crit_edge, label %do.body86

if.end.i.i176.do.end81_crit_edge:                 ; preds = %if.end.i.i176
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end81

do.end81:                                         ; preds = %if.end.i.i176.do.end81_crit_edge, %lor.lhs.false.i.i169.do.end81_crit_edge, %mlxfw_mfa2_valid_ptr.exit.i.i162.do.end81_crit_edge, %if.end75.do.end81_crit_edge
  %conv83 = zext i16 %dev_idx to i32
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %conv83) #14
  br label %cleanup

do.body86:                                        ; preds = %if.end.i.i176
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlxfw_mfa2_file_dev_validate.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlxfw_mfa2_file_dev_validate, %if.then98)) #9
          to label %for.inc [label %if.then98], !srcloc !153

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #11
  %component_index = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call72, i32 1, i32 2
  %39 = ptrtoint ptr %component_index to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %component_index, align 1
  %conv99 = zext i16 %40 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlxfw_mfa2_file_dev_validate.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.48, i32 noundef %conv99) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then98, %do.body86
  %inc = add nuw i16 %cptr_idx.0192, 1
  %41 = ptrtoint ptr %cptr_count to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %cptr_count, align 2
  %cmp70 = icmp ult i16 %inc, %42
  br i1 %cmp70, label %for.inc.for.body_crit_edge, label %for.inc.cleanup.loopexit_crit_edge

for.inc.cleanup.loopexit_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.loopexit:                                 ; preds = %for.inc.cleanup.loopexit_crit_edge, %for.body.cleanup.loopexit_crit_edge
  %43 = xor i1 %tobool73.not, true
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %do.end81, %do.end63, %for.cond.preheader.cleanup_crit_edge, %do.end53.cleanup_crit_edge, %do.end31, %do.end21, %mlxfw_mfa2_tlv_multi_validate.exit, %do.end8
  %retval.0 = phi i1 [ false, %do.end63 ], [ false, %do.end81 ], [ false, %do.end31 ], [ false, %do.end21 ], [ false, %do.end8 ], [ false, %mlxfw_mfa2_tlv_multi_validate.exit ], [ false, %do.end53.cleanup_crit_edge ], [ true, %for.cond.preheader.cleanup_crit_edge ], [ %43, %cleanup.loopexit ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cptr_count) #9
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mlxfw_mfa2_file_comp_validate(ptr noundef %mfa2_file, ptr noundef %comp_tlv, i16 noundef zeroext %comp_idx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlxfw_mfa2_file_comp_validate.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlxfw_mfa2_file_comp_validate, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %comp_idx to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlxfw_mfa2_file_comp_validate.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.53, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %len.i.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %comp_tlv, i32 0, i32 2
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %len.i.i, align 1
  %2 = ptrtoint ptr %mfa2_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfa2_file, align 4
  %data.i.i.i = getelementptr inbounds %struct.firmware, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ult ptr %5, %comp_tlv
  br i1 %cmp.i.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i, label %do.end.do.end8_crit_edge

do.end.do.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

mlxfw_mfa2_valid_ptr.exit.i.i:                    ; preds = %do.end
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %7
  %cmp4.i.i.i = icmp ugt ptr %add.ptr.i.i.i, %comp_tlv
  br i1 %cmp4.i.i.i, label %lor.lhs.false.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i.do.end8_crit_edge

mlxfw_mfa2_valid_ptr.exit.i.i.do.end8_crit_edge:  ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

lor.lhs.false.i.i:                                ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i
  %conv.i.i = zext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %comp_tlv, i32 %conv.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -1
  %cmp.i33.i.i = icmp ult ptr %5, %add.ptr1.i.i
  %cmp4.i35.i.i = icmp ugt ptr %add.ptr.i.i.i, %add.ptr1.i.i
  %or.cond.i = select i1 %cmp.i33.i.i, i1 %cmp4.i35.i.i, i1 false
  br i1 %or.cond.i, label %if.end.i.i, label %lor.lhs.false.i.i.do.end8_crit_edge

lor.lhs.false.i.i.do.end8_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %type.i.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %comp_tlv, i32 0, i32 1
  %8 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.not.i.i = icmp ne i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %1)
  %cmp19.not.i.i = icmp ne i16 %1, 4
  %or.cond1.i = select i1 %cmp.not.i.i, i1 true, i1 %cmp19.not.i.i
  %data.i.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %comp_tlv, i32 0, i32 3
  %tobool4.not = icmp eq ptr %data.i.i, null
  %or.cond = select i1 %or.cond1.i, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %if.end.i.i.do.end8_crit_edge, label %if.end12

if.end.i.i.do.end8_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end8:                                          ; preds = %if.end.i.i.do.end8_crit_edge, %lor.lhs.false.i.i.do.end8_crit_edge, %mlxfw_mfa2_valid_ptr.exit.i.i.do.end8_crit_edge, %do.end.do.end8_crit_edge
  %conv10 = zext i16 %comp_idx to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %conv10) #14
  br label %cleanup

if.end12:                                         ; preds = %if.end.i.i
  %call.i = tail call ptr @mlxfw_mfa2_tlv_multi_child(ptr noundef %mfa2_file, ptr noundef nonnull %data.i.i) #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end12
  %idx.013.i = phi i16 [ 0, %if.end12 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %tlv.012.i = phi ptr [ %call.i, %if.end12 ], [ %call4.i, %for.inc.i.for.body.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %tlv.012.i, null
  br i1 %tobool.not.i, label %mlxfw_mfa2_tlv_multi_validate.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add i16 %idx.013.i, 1
  %call4.i = tail call ptr @mlxfw_mfa2_tlv_next(ptr noundef %mfa2_file, ptr noundef nonnull %tlv.012.i) #9
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %data.i.i, align 1
  %cmp.not.i = icmp ult i16 %11, %inc.i
  br i1 %cmp.not.i, label %if.end15, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

mlxfw_mfa2_tlv_multi_validate.exit:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #14
  br label %cleanup

if.end15:                                         ; preds = %for.inc.i
  %call16 = tail call ptr @mlxfw_mfa2_tlv_multi_child(ptr noundef %mfa2_file, ptr noundef nonnull %data.i.i) #9
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %do.end21, label %if.end25

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %conv23 = zext i16 %comp_idx to i32
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %conv23) #14
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %len.i.i92 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call16, i32 0, i32 2
  %12 = ptrtoint ptr %len.i.i92 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %len.i.i92, align 1
  %14 = ptrtoint ptr %mfa2_file to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mfa2_file, align 4
  %data.i.i.i93 = getelementptr inbounds %struct.firmware, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %data.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i.i93, align 4
  %cmp.i.i.i94 = icmp ult ptr %17, %call16
  br i1 %cmp.i.i.i94, label %mlxfw_mfa2_valid_ptr.exit.i.i97, label %if.end25.do.end31_crit_edge

if.end25.do.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

mlxfw_mfa2_valid_ptr.exit.i.i97:                  ; preds = %if.end25
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %15, align 4
  %add.ptr.i.i.i95 = getelementptr i8, ptr %17, i32 %19
  %cmp4.i.i.i96 = icmp ugt ptr %add.ptr.i.i.i95, %call16
  br i1 %cmp4.i.i.i96, label %lor.lhs.false.i.i104, label %mlxfw_mfa2_valid_ptr.exit.i.i97.do.end31_crit_edge

mlxfw_mfa2_valid_ptr.exit.i.i97.do.end31_crit_edge: ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i97
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

lor.lhs.false.i.i104:                             ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i97
  %conv.i.i98 = zext i16 %13 to i32
  %add.ptr.i.i99 = getelementptr i8, ptr %call16, i32 %conv.i.i98
  %add.ptr1.i.i100 = getelementptr i8, ptr %add.ptr.i.i99, i32 -1
  %cmp.i33.i.i101 = icmp ult ptr %17, %add.ptr1.i.i100
  %cmp4.i35.i.i102 = icmp ugt ptr %add.ptr.i.i.i95, %add.ptr1.i.i100
  %or.cond.i103 = select i1 %cmp.i33.i.i101, i1 %cmp4.i35.i.i102, i1 false
  br i1 %or.cond.i103, label %if.end.i.i111, label %lor.lhs.false.i.i104.do.end31_crit_edge

lor.lhs.false.i.i104.do.end31_crit_edge:          ; preds = %lor.lhs.false.i.i104
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

if.end.i.i111:                                    ; preds = %lor.lhs.false.i.i104
  %type.i.i105 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call16, i32 0, i32 1
  %20 = ptrtoint ptr %type.i.i105 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %type.i.i105, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %21)
  %cmp.not.i.i106 = icmp ne i8 %21, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %13)
  %cmp19.not.i.i107 = icmp ne i16 %13, 16
  %or.cond1.i108 = select i1 %cmp.not.i.i106, i1 true, i1 %cmp19.not.i.i107
  %data.i.i109 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call16, i32 0, i32 3
  %tobool27.not = icmp eq ptr %data.i.i109, null
  %or.cond122 = select i1 %or.cond1.i108, i1 true, i1 %tobool27.not
  br i1 %or.cond122, label %if.end.i.i111.do.end31_crit_edge, label %do.body36

if.end.i.i111.do.end31_crit_edge:                 ; preds = %if.end.i.i111
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

do.end31:                                         ; preds = %if.end.i.i111.do.end31_crit_edge, %lor.lhs.false.i.i104.do.end31_crit_edge, %mlxfw_mfa2_valid_ptr.exit.i.i97.do.end31_crit_edge, %if.end25.do.end31_crit_edge
  %conv33 = zext i16 %comp_idx to i32
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %conv33) #14
  br label %cleanup

do.body36:                                        ; preds = %if.end.i.i111
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlxfw_mfa2_file_comp_validate.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlxfw_mfa2_file_comp_validate, %if.then48)) #9
          to label %do.body53 [label %if.then48], !srcloc !153

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  %identifier = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call16, i32 1, i32 2
  %22 = ptrtoint ptr %identifier to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %identifier, align 1
  %conv49 = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlxfw_mfa2_file_comp_validate.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.62, i32 noundef %conv49) #9
  br label %do.body53

do.body53:                                        ; preds = %if.then48, %do.body36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlxfw_mfa2_file_comp_validate.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlxfw_mfa2_file_comp_validate, %if.then65)) #9
          to label %cleanup [label %if.then65], !srcloc !153

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  %cb_offset_h = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call16, i32 2
  %24 = ptrtoint ptr %cb_offset_h to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %cb_offset_h, align 1
  %conv66 = zext i32 %25 to i64
  %shl = shl nuw i64 %conv66, 32
  %cb_offset_l = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call16, i32 3
  %26 = ptrtoint ptr %cb_offset_l to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %cb_offset_l, align 1
  %conv67 = zext i32 %27 to i64
  %or = or i64 %shl, %conv67
  %size = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %call16, i32 4
  %28 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %size, align 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlxfw_mfa2_file_comp_validate.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.64, i64 noundef %or, i32 noundef %29) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %do.body53, %do.end31, %do.end21, %mlxfw_mfa2_tlv_multi_validate.exit, %do.end8
  %retval.0 = phi i1 [ false, %do.end31 ], [ false, %do.end21 ], [ false, %do.end8 ], [ false, %mlxfw_mfa2_tlv_multi_validate.exit ], [ true, %if.then65 ], [ true, %do.body53 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxfw_mfa2_tlv_multi_child_find(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xz_dec_init(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxfw_mfa2_xz_dec_run(ptr noundef %xz_dec, ptr noundef %xz_buf, ptr nocapture noundef writeonly %finished) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xz_dec_run(ptr noundef %xz_dec, ptr noundef %xz_buf) #9
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %do.end30 [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
    i32 3, label %do.end
    i32 7, label %do.end7
    i32 5, label %do.end13
    i32 6, label %do.end19
    i32 4, label %do.end25
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %finished to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %finished, align 1
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %finished to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %finished, align 1
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #14
  br label %cleanup

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #14
  br label %cleanup

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #14
  br label %cleanup

do.end19:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #14
  br label %cleanup

do.end25:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #14
  br label %cleanup

do.end30:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %call) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %do.end25, %do.end19, %do.end13, %do.end7, %do.end, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end30 ], [ -22, %do.end25 ], [ -22, %do.end19 ], [ -22, %do.end13 ], [ -22, %do.end7 ], [ -12, %do.end ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xz_dec_end(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xz_dec_run(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !42, !44, !45, !46, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 278, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mlxfw_mfa2_file_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mlxfw_mfa2_file_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 284, i32 3}
!8 = !{ptr @mlxfw_mfa2_file_init._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @mlxfw_mfa2_file_init._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @mlxfw_mfa2_file_init._entry.6, !11, !"_entry", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 294, i32 3}
!12 = !{ptr @mlxfw_mfa2_file_init._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 300, i32 3}
!15 = !{ptr @mlxfw_mfa2_file_init._entry.8, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @mlxfw_mfa2_file_init._entry_ptr.10, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 311, i32 3}
!19 = !{ptr @mlxfw_mfa2_file_init._entry.11, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @mlxfw_mfa2_file_init._entry_ptr.13, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 317, i32 3}
!23 = !{ptr @mlxfw_mfa2_file_init._entry.14, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @mlxfw_mfa2_file_init._entry_ptr.16, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 560, i32 3}
!27 = !{ptr @.str.18, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mlxfw_mfa2_file_component_get._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @mlxfw_mfa2_file_component_get._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 566, i32 3}
!32 = !{ptr @mlxfw_mfa2_file_component_get._entry.19, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mlxfw_mfa2_file_component_get._entry_ptr.21, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @mlxfw_mfa2_fingerprint, !35, !"mlxfw_mfa2_fingerprint", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 78, i32 17}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 230, i32 2}
!38 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @mlxfw_mfa2_file_validate.__UNIQUE_ID_ddebug345, !37, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!41 = !{ptr @.str.25, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 236, i32 4}
!44 = !{ptr @mlxfw_mfa2_file_validate._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mlxfw_mfa2_file_validate._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @mlxfw_mfa2_file_validate._entry.27, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 249, i32 4}
!48 = !{ptr @mlxfw_mfa2_file_validate._entry_ptr.28, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 124, i32 2}
!51 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mlxfw_mfa2_file_dev_validate.__UNIQUE_ID_ddebug339, !50, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!53 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 128, i32 3}
!56 = !{ptr @mlxfw_mfa2_file_dev_validate._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @mlxfw_mfa2_file_dev_validate._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 139, i32 3}
!60 = !{ptr @mlxfw_mfa2_file_dev_validate._entry.33, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @mlxfw_mfa2_file_dev_validate._entry_ptr.35, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 145, i32 3}
!64 = !{ptr @mlxfw_mfa2_file_dev_validate._entry.36, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @mlxfw_mfa2_file_dev_validate._entry_ptr.38, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 149, i32 2}
!68 = !{ptr @mlxfw_mfa2_file_dev_validate.__UNIQUE_ID_ddebug340, !67, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!69 = !{ptr @.str.40, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.42, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 160, i32 3}
!72 = !{ptr @mlxfw_mfa2_file_dev_validate._entry.41, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @mlxfw_mfa2_file_dev_validate._entry_ptr.43, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.45, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 173, i32 4}
!76 = !{ptr @mlxfw_mfa2_file_dev_validate._entry.44, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @mlxfw_mfa2_file_dev_validate._entry_ptr.46, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.47, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 178, i32 3}
!80 = !{ptr @mlxfw_mfa2_file_dev_validate.__UNIQUE_ID_ddebug341, !79, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!81 = !{ptr @.str.48, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.49, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 104, i32 4}
!84 = !{ptr @.str.50, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @mlxfw_mfa2_tlv_multi_validate._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @mlxfw_mfa2_tlv_multi_validate._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 193, i32 2}
!89 = !{ptr @.str.52, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @mlxfw_mfa2_file_comp_validate.__UNIQUE_ID_ddebug342, !88, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!91 = !{ptr @.str.53, !88, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.54, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 197, i32 3}
!94 = !{ptr @mlxfw_mfa2_file_comp_validate._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @mlxfw_mfa2_file_comp_validate._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 207, i32 3}
!98 = !{ptr @mlxfw_mfa2_file_comp_validate._entry.55, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @mlxfw_mfa2_file_comp_validate._entry_ptr.57, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.59, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 213, i32 3}
!102 = !{ptr @mlxfw_mfa2_file_comp_validate._entry.58, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @mlxfw_mfa2_file_comp_validate._entry_ptr.60, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.61, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 217, i32 2}
!106 = !{ptr @mlxfw_mfa2_file_comp_validate.__UNIQUE_ID_ddebug343, !105, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!107 = !{ptr @.str.62, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.63, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 218, i32 2}
!110 = !{ptr @mlxfw_mfa2_file_comp_validate.__UNIQUE_ID_ddebug344, !109, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!111 = !{ptr @.str.64, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.65, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 454, i32 4}
!114 = !{ptr @.str.66, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @mlxfw_mfa2_file_cb_offset_xz._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @mlxfw_mfa2_file_cb_offset_xz._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.67, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 405, i32 3}
!119 = !{ptr @.str.68, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @mlxfw_mfa2_xz_dec_run._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @mlxfw_mfa2_xz_dec_run._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.70, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 408, i32 3}
!124 = !{ptr @mlxfw_mfa2_xz_dec_run._entry.69, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @mlxfw_mfa2_xz_dec_run._entry_ptr.71, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.73, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 411, i32 3}
!128 = !{ptr @mlxfw_mfa2_xz_dec_run._entry.72, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @mlxfw_mfa2_xz_dec_run._entry_ptr.74, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.76, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 414, i32 3}
!132 = !{ptr @mlxfw_mfa2_xz_dec_run._entry.75, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @mlxfw_mfa2_xz_dec_run._entry_ptr.77, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.79, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 417, i32 3}
!136 = !{ptr @mlxfw_mfa2_xz_dec_run._entry.78, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @mlxfw_mfa2_xz_dec_run._entry_ptr.80, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.82, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 420, i32 3}
!140 = !{ptr @mlxfw_mfa2_xz_dec_run._entry.81, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @mlxfw_mfa2_xz_dec_run._entry_ptr.83, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @mlxfw_mfa2_comp_magic, !143, !"mlxfw_mfa2_comp_magic", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c", i32 82, i32 17}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{i64 2148706275, i64 2148706280, i64 2148706293, i64 2148706337, i64 2148706371, i64 2148706392}
!154 = !{!"auto-init"}
!155 = !{i8 0, i8 2}
