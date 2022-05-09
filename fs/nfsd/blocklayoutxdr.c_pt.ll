; ModuleID = '/llk/IR_all_yes/fs/nfsd/blocklayoutxdr.c_pt.bc'
source_filename = "../fs/nfsd/blocklayoutxdr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfsd4_layoutget = type { i64, i32, i32, i32, %struct.stateid_t, %struct.nfsd4_layout_seg, ptr }
%struct.stateid_t = type { i32, %struct.stateid_opaque_t }
%struct.stateid_opaque_t = type { %struct.clientid_t, i32 }
%struct.clientid_t = type { i32, i32 }
%struct.nfsd4_layout_seg = type { i32, i64, i64 }
%struct.pnfs_block_extent = type { %struct.nfsd4_deviceid, i64, i64, i64, i32 }
%struct.nfsd4_deviceid = type { i64, i32, i32 }
%struct.nfsd4_getdeviceinfo = type { %struct.nfsd4_deviceid, i32, i32, i32, ptr }
%struct.pnfs_block_deviceaddr = type { i32, [0 x %struct.pnfs_block_volume] }
%struct.pnfs_block_volume = type { i32, %union.anon.150 }
%union.anon.150 = type { %struct.anon.152 }
%struct.anon.152 = type { i32, i32, i32, [256 x i8], i64 }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }

@nfsd_debug = external dso_local local_unnamed_addr global i32, align 4
@nfsd4_block_decode_layoutupdate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: extent array too small: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nfsd4_block_decode_layoutupdate\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/nfsd/blocklayoutxdr.c\00", [39 x i8] zeroinitializer }, align 32
@nfsd4_block_decode_layoutupdate._entry_ptr = internal global ptr @nfsd4_block_decode_layoutupdate._entry, section ".printk_index", align 4
@nfsd4_block_decode_layoutupdate._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: extent array invalid: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@nfsd4_block_decode_layoutupdate._entry_ptr.5 = internal global ptr @nfsd4_block_decode_layoutupdate._entry.3, section ".printk_index", align 4
@nfsd4_block_decode_layoutupdate._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: extent array size mismatch: %u/%u\0A\00", [57 x i8] zeroinitializer }, align 32
@nfsd4_block_decode_layoutupdate._entry_ptr.8 = internal global ptr @nfsd4_block_decode_layoutupdate._entry.6, section ".printk_index", align 4
@nfsd4_block_decode_layoutupdate._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: failed to allocate extent array\0A\00", [59 x i8] zeroinitializer }, align 32
@nfsd4_block_decode_layoutupdate._entry_ptr.11 = internal global ptr @nfsd4_block_decode_layoutupdate._entry.9, section ".printk_index", align 4
@nfsd4_block_decode_layoutupdate._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: unaligned offset 0x%llx\0A\00", [35 x i8] zeroinitializer }, align 32
@nfsd4_block_decode_layoutupdate._entry_ptr.14 = internal global ptr @nfsd4_block_decode_layoutupdate._entry.12, section ".printk_index", align 4
@nfsd4_block_decode_layoutupdate._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: unaligned length 0x%llx\0A\00", [35 x i8] zeroinitializer }, align 32
@nfsd4_block_decode_layoutupdate._entry_ptr.17 = internal global ptr @nfsd4_block_decode_layoutupdate._entry.15, section ".printk_index", align 4
@nfsd4_block_decode_layoutupdate._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: unaligned disk offset 0x%llx\0A\00", [62 x i8] zeroinitializer }, align 32
@nfsd4_block_decode_layoutupdate._entry_ptr.20 = internal global ptr @nfsd4_block_decode_layoutupdate._entry.18, section ".printk_index", align 4
@nfsd4_block_decode_layoutupdate._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: incorrect extent state %d\0A\00", [33 x i8] zeroinitializer }, align 32
@nfsd4_block_decode_layoutupdate._entry_ptr.23 = internal global ptr @nfsd4_block_decode_layoutupdate._entry.21, section ".printk_index", align 4
@nfsd4_scsi_decode_layoutupdate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.24, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nfsd4_scsi_decode_layoutupdate\00", [33 x i8] zeroinitializer }, align 32
@nfsd4_scsi_decode_layoutupdate._entry_ptr = internal global ptr @nfsd4_scsi_decode_layoutupdate._entry, section ".printk_index", align 4
@nfsd4_scsi_decode_layoutupdate._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.24, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nfsd4_scsi_decode_layoutupdate._entry_ptr.26 = internal global ptr @nfsd4_scsi_decode_layoutupdate._entry.25, section ".printk_index", align 4
@nfsd4_scsi_decode_layoutupdate._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.24, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nfsd4_scsi_decode_layoutupdate._entry_ptr.28 = internal global ptr @nfsd4_scsi_decode_layoutupdate._entry.27, section ".printk_index", align 4
@nfsd4_scsi_decode_layoutupdate._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.24, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nfsd4_scsi_decode_layoutupdate._entry_ptr.30 = internal global ptr @nfsd4_scsi_decode_layoutupdate._entry.29, section ".printk_index", align 4
@nfsd4_scsi_decode_layoutupdate._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.24, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nfsd4_scsi_decode_layoutupdate._entry_ptr.32 = internal global ptr @nfsd4_scsi_decode_layoutupdate._entry.31, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 113, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 118, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 124, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 131, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 143, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 149, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 155, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 161, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 185, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 192, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 199, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 208, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private constant [28 x i8] c"../fs/nfsd/blocklayoutxdr.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 215, i32 4 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @nfsd4_block_decode_layoutupdate._entry, ptr @nfsd4_block_decode_layoutupdate._entry.12, ptr @nfsd4_block_decode_layoutupdate._entry.15, ptr @nfsd4_block_decode_layoutupdate._entry.18, ptr @nfsd4_block_decode_layoutupdate._entry.21, ptr @nfsd4_block_decode_layoutupdate._entry.3, ptr @nfsd4_block_decode_layoutupdate._entry.6, ptr @nfsd4_block_decode_layoutupdate._entry.9, ptr @nfsd4_block_decode_layoutupdate._entry_ptr, ptr @nfsd4_block_decode_layoutupdate._entry_ptr.11, ptr @nfsd4_block_decode_layoutupdate._entry_ptr.14, ptr @nfsd4_block_decode_layoutupdate._entry_ptr.17, ptr @nfsd4_block_decode_layoutupdate._entry_ptr.20, ptr @nfsd4_block_decode_layoutupdate._entry_ptr.23, ptr @nfsd4_block_decode_layoutupdate._entry_ptr.5, ptr @nfsd4_block_decode_layoutupdate._entry_ptr.8, ptr @nfsd4_scsi_decode_layoutupdate._entry, ptr @nfsd4_scsi_decode_layoutupdate._entry.25, ptr @nfsd4_scsi_decode_layoutupdate._entry.27, ptr @nfsd4_scsi_decode_layoutupdate._entry.29, ptr @nfsd4_scsi_decode_layoutupdate._entry.31, ptr @nfsd4_scsi_decode_layoutupdate._entry_ptr, ptr @nfsd4_scsi_decode_layoutupdate._entry_ptr.26, ptr @nfsd4_scsi_decode_layoutupdate._entry_ptr.28, ptr @nfsd4_scsi_decode_layoutupdate._entry_ptr.30, ptr @nfsd4_scsi_decode_layoutupdate._entry_ptr.32, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_block_decode_layoutupdate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_block_decode_layoutupdate._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_block_decode_layoutupdate._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_block_decode_layoutupdate._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_block_decode_layoutupdate._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_block_decode_layoutupdate._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_block_decode_layoutupdate._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_block_decode_layoutupdate._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_scsi_decode_layoutupdate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_scsi_decode_layoutupdate._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_scsi_decode_layoutupdate._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_scsi_decode_layoutupdate._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd4_scsi_decode_layoutupdate._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd4_block_encode_layoutget(ptr noundef %xdr, ptr nocapture noundef readonly %lgp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lg_content = getelementptr inbounds %struct.nfsd4_layoutget, ptr %lgp, i32 0, i32 6
  %0 = ptrtoint ptr %lg_content to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lg_content, align 8
  %call = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 52) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr = getelementptr i32, ptr %call, i32 1
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 48, ptr %call, align 4
  %incdec.ptr1 = getelementptr i32, ptr %call, i32 2
  %3 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %incdec.ptr, align 4
  %call2 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef %incdec.ptr1, ptr noundef %1, i32 noundef 16) #5
  %foff = getelementptr inbounds %struct.pnfs_block_extent, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %foff to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %foff, align 8
  %6 = ptrtoint ptr %call2 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %call2, align 1
  %add.ptr.i = getelementptr i32, ptr %call2, i32 2
  %len4 = getelementptr inbounds %struct.pnfs_block_extent, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %len4 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %len4, align 8
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %add.ptr.i, align 1
  %add.ptr.i22 = getelementptr i32, ptr %call2, i32 4
  %soff = getelementptr inbounds %struct.pnfs_block_extent, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %soff to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %soff, align 8
  %12 = ptrtoint ptr %add.ptr.i22 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %add.ptr.i22, align 1
  %add.ptr.i23 = getelementptr i32, ptr %call2, i32 6
  %es = getelementptr inbounds %struct.pnfs_block_extent, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %es to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %es, align 8
  %15 = ptrtoint ptr %add.ptr.i23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %add.ptr.i23, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 10005, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque_fixed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd4_block_encode_getdeviceinfo(ptr noundef %xdr, ptr nocapture noundef readonly %gdp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gd_device = getelementptr inbounds %struct.nfsd4_getdeviceinfo, ptr %gdp, i32 0, i32 4
  %0 = ptrtoint ptr %gd_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gd_device, align 4
  %call = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 8) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp28.not = icmp eq i32 %3, 0
  br i1 %cmp28.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.030 = phi i32 [ %inc, %if.end5.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %len.029 = phi i32 [ %add6, %if.end5.for.body_crit_edge ], [ 4, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pnfs_block_deviceaddr, ptr %1, i32 0, i32 1, i32 %i.030
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %for.body.if.then3_crit_edge [
    i32 0, label %sw.bb.i
    i32 4, label %sw.bb7.i
  ]

for.body.if.then3_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

sw.bb.i:                                          ; preds = %for.body
  %sig_len.i = getelementptr %struct.pnfs_block_deviceaddr, ptr %1, i32 0, i32 1, i32 %i.030, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %sig_len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sig_len.i, align 8
  %9 = add i32 %8, 23
  %add1.i = and i32 %9, -4
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add1.i) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb.i.if.then3_crit_edge, label %if.end.i

sw.bb.i.if.then3_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = getelementptr %struct.pnfs_block_deviceaddr, ptr %1, i32 0, i32 1, i32 %i.030, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 8
  %incdec.ptr.i = getelementptr i32, ptr %call.i, i32 1
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %call.i, align 4
  %incdec.ptr3.i = getelementptr i32, ptr %call.i, i32 2
  %14 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %incdec.ptr.i, align 4
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %10, align 8
  %17 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %incdec.ptr3.i, align 1
  %add.ptr.i.i = getelementptr i32, ptr %call.i, i32 4
  %sig.i = getelementptr %struct.pnfs_block_deviceaddr, ptr %1, i32 0, i32 1, i32 %i.030, i32 1, i32 0, i32 3
  %18 = ptrtoint ptr %sig_len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sig_len.i, align 8
  %call6.i = tail call ptr @xdr_encode_opaque(ptr noundef %add.ptr.i.i, ptr noundef %sig.i, i32 noundef %19) #5
  br label %nfsd4_block_encode_volume.exit

sw.bb7.i:                                         ; preds = %for.body
  %designator_len.i = getelementptr %struct.pnfs_block_deviceaddr, ptr %1, i32 0, i32 1, i32 %i.030, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %designator_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %designator_len.i, align 8
  %22 = add i32 %21, 27
  %add12.i = and i32 %22, -4
  %call13.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add12.i) #5
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %sw.bb7.i.if.then3_crit_edge, label %if.end16.i

sw.bb7.i.if.then3_crit_edge:                      ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.end16.i:                                       ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = getelementptr %struct.pnfs_block_deviceaddr, ptr %1, i32 0, i32 1, i32 %i.030, i32 1
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 8
  %incdec.ptr18.i = getelementptr i32, ptr %call13.i, i32 1
  %26 = ptrtoint ptr %call13.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %call13.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %23, align 8
  %incdec.ptr19.i = getelementptr i32, ptr %call13.i, i32 2
  %29 = ptrtoint ptr %incdec.ptr18.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %incdec.ptr18.i, align 4
  %designator_type.i = getelementptr %struct.pnfs_block_deviceaddr, ptr %1, i32 0, i32 1, i32 %i.030, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %designator_type.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %designator_type.i, align 4
  %incdec.ptr20.i = getelementptr i32, ptr %call13.i, i32 3
  %32 = ptrtoint ptr %incdec.ptr19.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %incdec.ptr19.i, align 4
  %designator.i = getelementptr %struct.pnfs_block_deviceaddr, ptr %1, i32 0, i32 1, i32 %i.030, i32 1, i32 0, i32 3
  %33 = ptrtoint ptr %designator_len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %designator_len.i, align 8
  %call23.i = tail call ptr @xdr_encode_opaque(ptr noundef %incdec.ptr20.i, ptr noundef %designator.i, i32 noundef %34) #5
  %pr_key.i = getelementptr %struct.pnfs_block_deviceaddr, ptr %1, i32 0, i32 1, i32 %i.030, i32 1, i32 0, i32 4
  %35 = ptrtoint ptr %pr_key.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %pr_key.i, align 8
  %37 = ptrtoint ptr %call23.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %36, ptr %call23.i, align 1
  br label %nfsd4_block_encode_volume.exit

nfsd4_block_encode_volume.exit:                   ; preds = %if.end16.i, %if.end.i
  %retval.0.i = phi i32 [ %add12.i, %if.end16.i ], [ %add1.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp2 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp2, label %nfsd4_block_encode_volume.exit.if.then3_crit_edge, label %if.end5

nfsd4_block_encode_volume.exit.if.then3_crit_edge: ; preds = %nfsd4_block_encode_volume.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.then3:                                         ; preds = %nfsd4_block_encode_volume.exit.if.then3_crit_edge, %sw.bb7.i.if.then3_crit_edge, %sw.bb.i.if.then3_crit_edge, %for.body.if.then3_crit_edge
  %retval.0.i26 = phi i32 [ %retval.0.i, %nfsd4_block_encode_volume.exit.if.then3_crit_edge ], [ -524, %for.body.if.then3_crit_edge ], [ -525, %sw.bb7.i.if.then3_crit_edge ], [ -525, %sw.bb.i.if.then3_crit_edge ]
  %call4 = tail call i32 @nfserrno(i32 noundef %retval.0.i26) #5
  br label %cleanup

if.end5:                                          ; preds = %nfsd4_block_encode_volume.exit
  %add6 = add i32 %retval.0.i, %len.029
  %inc = add nuw i32 %i.030, 1
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %1, align 8
  %cmp = icmp ult i32 %inc, %39
  br i1 %cmp, label %if.end5.for.body_crit_edge, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end5.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 4, %for.cond.preheader.for.end_crit_edge ], [ %add6, %if.end5.for.end_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %call, i32 1
  %40 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %len.0.lcssa, ptr %call, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %1, align 8
  %43 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %incdec.ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then3 ], [ 0, %for.end ], [ 10018, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfserrno(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd4_block_decode_layoutupdate(ptr nocapture noundef readonly %p, i32 noundef %len, ptr nocapture noundef writeonly %iomapp, i32 noundef %block_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp = icmp ult i32 %len, 4
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %0 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %0, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup140_crit_edge, label %do.end

do.body.cleanup140_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup140

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %len) #8
  br label %cleanup140

if.end5:                                          ; preds = %entry
  %sub = add i32 %len, -4
  %div = udiv i32 %sub, 44
  %1 = mul i32 %div, 44
  %rem.decomposed = sub i32 %sub, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool6.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool6.not, label %if.end20, label %do.body8

do.body8:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %2 = load i32, ptr @nfsd_debug, align 4
  %and9 = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body8.cleanup140_crit_edge, label %do.end14

do.body8.cleanup140_crit_edge:                    ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup140

do.end14:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %sub) #8
  br label %cleanup140

if.end20:                                         ; preds = %if.end5
  %3 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %div)
  %cmp22.not = icmp eq i32 %4, %div
  br i1 %cmp22.not, label %if.end36, label %do.body24

do.body24:                                        ; preds = %if.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %5 = load i32, ptr @nfsd_debug, align 4
  %and25 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.cleanup140_crit_edge, label %do.end30

do.body24.cleanup140_crit_edge:                   ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup140

do.end30:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef %sub, i32 noundef %4) #8
  br label %cleanup140

if.end36:                                         ; preds = %if.end20
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 48) #5
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %if.end36.do.body40_crit_edge, label %if.end7.i.i, !prof !59

if.end36.do.body40_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body40

if.end7.i.i:                                      ; preds = %if.end36
  %8 = extractvalue { i32, i1 } %6, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #9
  %tobool38.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool38.not, label %if.end7.i.i.do.body40_crit_edge, label %for.cond.preheader

if.end7.i.i.do.body40_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body40

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp53186.not = icmp eq i32 %4, 0
  br i1 %cmp53186.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub56 = add i32 %block_size, -1
  %conv = zext i32 %sub56 to i64
  br label %for.body

do.body40:                                        ; preds = %if.end7.i.i.do.body40_crit_edge, %if.end36.do.body40_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %9 = load i32, ptr @nfsd_debug, align 4
  %and41 = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %do.body40.cleanup140_crit_edge, label %do.end46

do.body40.cleanup140_crit_edge:                   ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup140

do.end46:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1) #8
  br label %cleanup140

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %add.ptr.i169.pn188 = phi ptr [ %p, %for.body.lr.ph ], [ %add.ptr.i169, %for.inc.for.body_crit_edge ]
  %i.0187 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr i32, ptr %add.ptr.i169.pn188, i32 5
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %add.ptr, align 1
  %and57 = and i64 %11, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and57)
  %tobool58.not = icmp eq i64 %and57, 0
  br i1 %tobool58.not, label %if.end73, label %do.body60

do.body60:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %12 = load i32, ptr @nfsd_debug, align 4
  %and61 = and i32 %12, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body60.fail_crit_edge, label %do.end66

do.body60.fail_crit_edge:                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

do.end66:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #7
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i64 noundef %11) #8
  br label %fail

if.end73:                                         ; preds = %for.body
  %add.ptr.i = getelementptr i32, ptr %add.ptr.i169.pn188, i32 7
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %add.ptr.i, align 1
  %and79 = and i64 %14, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and79)
  %tobool80.not = icmp eq i64 %and79, 0
  br i1 %tobool80.not, label %if.end95, label %do.body82

do.body82:                                        ; preds = %if.end73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %15 = load i32, ptr @nfsd_debug, align 4
  %and83 = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %do.body82.fail_crit_edge, label %do.end88

do.body82.fail_crit_edge:                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

do.end88:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #7
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i64 noundef %11) #8
  br label %fail

if.end95:                                         ; preds = %if.end73
  %add.ptr.i168 = getelementptr i32, ptr %add.ptr.i169.pn188, i32 9
  %16 = ptrtoint ptr %add.ptr.i168 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %add.ptr.i168, align 1
  %add.ptr.i169 = getelementptr i32, ptr %add.ptr.i169.pn188, i32 11
  %and100 = and i64 %17, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and100)
  %tobool101.not = icmp eq i64 %and100, 0
  br i1 %tobool101.not, label %if.end116, label %do.body103

do.body103:                                       ; preds = %if.end95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %18 = load i32, ptr @nfsd_debug, align 4
  %and104 = and i32 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %do.body103.fail_crit_edge, label %do.end109

do.body103.fail_crit_edge:                        ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

do.end109:                                        ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #7
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i64 noundef %17) #8
  br label %fail

if.end116:                                        ; preds = %if.end95
  %19 = ptrtoint ptr %add.ptr.i169 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp120.not = icmp eq i32 %20, 0
  br i1 %cmp120.not, label %for.inc, label %do.body123

do.body123:                                       ; preds = %if.end116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %21 = load i32, ptr @nfsd_debug, align 4
  %and124 = and i32 %21, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %do.body123.fail_crit_edge, label %do.end129

do.body123.fail_crit_edge:                        ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

do.end129:                                        ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #7
  %call132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef %20) #8
  br label %fail

for.inc:                                          ; preds = %if.end116
  %offset = getelementptr %struct.iomap, ptr %call8.i.i, i32 %i.0187, i32 1
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %11, ptr %offset, align 8
  %length = getelementptr %struct.iomap, ptr %call8.i.i, i32 %i.0187, i32 2
  %23 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %14, ptr %length, align 16
  %inc = add nuw i32 %i.0187, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %24 = ptrtoint ptr %iomapp to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call8.i.i, ptr %iomapp, align 4
  br label %cleanup140

fail:                                             ; preds = %do.end129, %do.body123.fail_crit_edge, %do.end109, %do.body103.fail_crit_edge, %do.end88, %do.body82.fail_crit_edge, %do.end66, %do.body60.fail_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #5
  br label %cleanup140

cleanup140:                                       ; preds = %fail, %for.end, %do.end46, %do.body40.cleanup140_crit_edge, %do.end30, %do.body24.cleanup140_crit_edge, %do.end14, %do.body8.cleanup140_crit_edge, %do.end, %do.body.cleanup140_crit_edge
  %retval.0 = phi i32 [ -22, %fail ], [ %4, %for.end ], [ -22, %do.end ], [ -22, %do.body.cleanup140_crit_edge ], [ -22, %do.end14 ], [ -22, %do.body8.cleanup140_crit_edge ], [ -22, %do.end30 ], [ -22, %do.body24.cleanup140_crit_edge ], [ -12, %do.end46 ], [ -12, %do.body40.cleanup140_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfsd4_scsi_decode_layoutupdate(ptr nocapture noundef readonly %p, i32 noundef %len, ptr nocapture noundef writeonly %iomapp, i32 noundef %block_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp = icmp ult i32 %len, 4
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %0 = load i32, ptr @nfsd_debug, align 4
  %and = and i32 %0, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup76_crit_edge, label %do.end

do.body.cleanup76_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup76

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.24, i32 noundef %len) #8
  br label %cleanup76

if.end5:                                          ; preds = %entry
  %incdec.ptr = getelementptr i32, ptr %p, i32 1
  %1 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %p, align 4
  %mul = shl i32 %2, 4
  %add = or i32 %mul, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len)
  %cmp7.not = icmp eq i32 %add, %len
  br i1 %cmp7.not, label %if.end21, label %do.body9

do.body9:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %3 = load i32, ptr @nfsd_debug, align 4
  %and10 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body9.cleanup76_crit_edge, label %do.end15

do.body9.cleanup76_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup76

do.end15:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.24, i32 noundef %len, i32 noundef %add) #8
  br label %cleanup76

if.end21:                                         ; preds = %if.end5
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 48) #5
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %if.end21.do.body25_crit_edge, label %if.end7.i.i, !prof !59

if.end21.do.body25_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body25

if.end7.i.i:                                      ; preds = %if.end21
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #9
  %tobool23.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool23.not, label %if.end7.i.i.do.body25_crit_edge, label %for.cond.preheader

if.end7.i.i.do.body25_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body25

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp38105.not = icmp eq i32 %2, 0
  br i1 %cmp38105.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub = add i32 %block_size, -1
  %conv = zext i32 %sub to i64
  br label %for.body

do.body25:                                        ; preds = %if.end7.i.i.do.body25_crit_edge, %if.end21.do.body25_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %7 = load i32, ptr @nfsd_debug, align 4
  %and26 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body25.cleanup76_crit_edge, label %do.end31

do.body25.cleanup76_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup76

do.end31:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #7
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.24) #8
  br label %cleanup76

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %p.addr.0107 = phi ptr [ %incdec.ptr, %for.body.lr.ph ], [ %add.ptr.i97, %for.inc.for.body_crit_edge ]
  %i.0106 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %p.addr.0107 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %p.addr.0107, align 1
  %and40 = and i64 %9, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and40)
  %tobool41.not = icmp eq i64 %and40, 0
  br i1 %tobool41.not, label %if.end55, label %do.body43

do.body43:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %10 = load i32, ptr @nfsd_debug, align 4
  %and44 = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body43.fail_crit_edge, label %do.end49

do.body43.fail_crit_edge:                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

do.end49:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #7
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.24, i64 noundef %9) #8
  br label %fail

if.end55:                                         ; preds = %for.body
  %add.ptr.i = getelementptr i32, ptr %p.addr.0107, i32 2
  %offset = getelementptr %struct.iomap, ptr %call8.i.i, i32 %i.0106, i32 1
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %9, ptr %offset, align 8
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %add.ptr.i, align 1
  %and59 = and i64 %13, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and59)
  %tobool60.not = icmp eq i64 %and59, 0
  br i1 %tobool60.not, label %for.inc, label %do.body62

do.body62:                                        ; preds = %if.end55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfsd_debug to i32))
  %14 = load i32, ptr @nfsd_debug, align 4
  %and63 = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %do.body62.fail_crit_edge, label %do.end68

do.body62.fail_crit_edge:                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

do.end68:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.24, i64 noundef %13) #8
  br label %fail

for.inc:                                          ; preds = %if.end55
  %add.ptr.i97 = getelementptr i32, ptr %p.addr.0107, i32 4
  %length = getelementptr %struct.iomap, ptr %call8.i.i, i32 %i.0106, i32 2
  %15 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %13, ptr %length, align 16
  %inc = add nuw i32 %i.0106, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %16 = ptrtoint ptr %iomapp to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8.i.i, ptr %iomapp, align 4
  br label %cleanup76

fail:                                             ; preds = %do.end68, %do.body62.fail_crit_edge, %do.end49, %do.body43.fail_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #5
  br label %cleanup76

cleanup76:                                        ; preds = %fail, %for.end, %do.end31, %do.body25.cleanup76_crit_edge, %do.end15, %do.body9.cleanup76_crit_edge, %do.end, %do.body.cleanup76_crit_edge
  %retval.0 = phi i32 [ -22, %fail ], [ %2, %for.end ], [ -22, %do.end ], [ -22, %do.body.cleanup76_crit_edge ], [ -22, %do.end15 ], [ -22, %do.body9.cleanup76_crit_edge ], [ -12, %do.end31 ], [ -12, %do.body25.cleanup76_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !46, !47, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfsd/blocklayoutxdr.c", i32 113, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nfsd4_block_decode_layoutupdate._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nfsd4_block_decode_layoutupdate._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nfsd/blocklayoutxdr.c", i32 118, i32 3}
!8 = !{ptr @nfsd4_block_decode_layoutupdate._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @nfsd4_block_decode_layoutupdate._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nfsd/blocklayoutxdr.c", i32 124, i32 3}
!12 = !{ptr @nfsd4_block_decode_layoutupdate._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @nfsd4_block_decode_layoutupdate._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/nfsd/blocklayoutxdr.c", i32 131, i32 3}
!16 = !{ptr @nfsd4_block_decode_layoutupdate._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @nfsd4_block_decode_layoutupdate._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/nfsd/blocklayoutxdr.c", i32 143, i32 4}
!20 = !{ptr @nfsd4_block_decode_layoutupdate._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @nfsd4_block_decode_layoutupdate._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/nfsd/blocklayoutxdr.c", i32 149, i32 4}
!24 = !{ptr @nfsd4_block_decode_layoutupdate._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @nfsd4_block_decode_layoutupdate._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/nfsd/blocklayoutxdr.c", i32 155, i32 4}
!28 = !{ptr @nfsd4_block_decode_layoutupdate._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @nfsd4_block_decode_layoutupdate._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/nfsd/blocklayoutxdr.c", i32 161, i32 4}
!32 = !{ptr @nfsd4_block_decode_layoutupdate._entry.21, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @nfsd4_block_decode_layoutupdate._entry_ptr.23, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.24, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/nfsd/blocklayoutxdr.c", i32 185, i32 3}
!36 = !{ptr @nfsd4_scsi_decode_layoutupdate._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @nfsd4_scsi_decode_layoutupdate._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @nfsd4_scsi_decode_layoutupdate._entry.25, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../fs/nfsd/blocklayoutxdr.c", i32 192, i32 3}
!40 = !{ptr @nfsd4_scsi_decode_layoutupdate._entry_ptr.26, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @nfsd4_scsi_decode_layoutupdate._entry.27, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../fs/nfsd/blocklayoutxdr.c", i32 199, i32 3}
!43 = !{ptr @nfsd4_scsi_decode_layoutupdate._entry_ptr.28, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @nfsd4_scsi_decode_layoutupdate._entry.29, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../fs/nfsd/blocklayoutxdr.c", i32 208, i32 4}
!46 = !{ptr @nfsd4_scsi_decode_layoutupdate._entry_ptr.30, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @nfsd4_scsi_decode_layoutupdate._entry.31, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../fs/nfsd/blocklayoutxdr.c", i32 215, i32 4}
!49 = !{ptr @nfsd4_scsi_decode_layoutupdate._entry_ptr.32, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"branch_weights", i32 1, i32 2000}
