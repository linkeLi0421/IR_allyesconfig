; ModuleID = '/llk/IR_all_yes/drivers/net/ppp/ppp_mppe.c_pt.bc'
source_filename = "../drivers/net/ppp/ppp_mppe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.compressor = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sha_pad = type { [40 x i8], [40 x i8] }
%struct.ppp_mppe_state = type { %struct.arc4_ctx, ptr, ptr, [16 x i8], [16 x i8], i32, i8, i32, i32, i32, i32, i32, i32, %struct.compstat }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.compstat = type { i32, i32, i32, i32, i32, i32, i32, i32, double }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@__UNIQUE_ID_author226 = internal constant [51 x i8] c"ppp_mppe.author=Frank Cusack <fcusack@fcusack.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description227 = internal constant [89 x i8] c"ppp_mppe.description=Point-to-Point Protocol Microsoft Point-to-Point Encryption support\00", section ".modinfo", align 1
@__UNIQUE_ID_file228 = internal constant [39 x i8] c"ppp_mppe.file=drivers/net/ppp/ppp_mppe\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [30 x i8] c"ppp_mppe.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias230 = internal constant [31 x i8] c"ppp_mppe.alias=ppp-compress-18\00", section ".modinfo", align 1
@__UNIQUE_ID_version231 = internal constant [23 x i8] c"ppp_mppe.version=1.0.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ppp_mppe\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.0.2\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@ppp_mppe = internal global { %struct.compressor, [32 x i8] } { %struct.compressor { i32 18, ptr @mppe_alloc, ptr @mppe_free, ptr @mppe_comp_init, ptr @mppe_comp_reset, ptr @mppe_compress, ptr @mppe_comp_stats, ptr @mppe_alloc, ptr @mppe_free, ptr @mppe_decomp_init, ptr @mppe_decomp_reset, ptr @mppe_decompress, ptr @mppe_incomp, ptr @mppe_comp_stats, ptr null, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sha_pad = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_ppp_mppe__232_687_ppp_mppe_init6 = internal global ptr @ppp_mppe_init, section ".initcall6.init", align 4
@__exitcall_ppp_mppe_cleanup = internal global ptr @ppp_mppe_cleanup, section ".exitcall.exit", align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sha1\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mppe_comp_init\00", [17 x i8] zeroinitializer }, align 32
@mppe_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s[%d]: unknown key length\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mppe_init\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/net/ppp/ppp_mppe.c\00", [37 x i8] zeroinitializer }, align 32
@mppe_init._entry_ptr = internal global ptr @mppe_init._entry, section ".printk_index", align 4
@mppe_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s[%d]: initialized with %d-bit %s mode\0A\00", [53 x i8] zeroinitializer }, align 32
@mppe_init._entry_ptr.10 = internal global ptr @mppe_init._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stateful\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stateless\00", [22 x i8] zeroinitializer }, align 32
@mppe_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s[%d]: keys: master: %*phN initial session: %*phN\0A\00", [42 x i8] zeroinitializer }, align 32
@mppe_init._entry_ptr.15 = internal global ptr @mppe_init._entry.13, section ".printk_index", align 4
@mppe_compress._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.7, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017mppe_compress[%d]: osize too small! (have: %d need: %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mppe_compress\00", [18 x i8] zeroinitializer }, align 32
@mppe_compress._entry_ptr = internal global ptr @mppe_compress._entry, section ".printk_index", align 4
@mppe_compress._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.7, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017mppe_compress[%d]: ccount %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mppe_compress._entry_ptr.20 = internal global ptr @mppe_compress._entry.18, section ".printk_index", align 4
@mppe_compress._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.7, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017mppe_compress[%d]: rekeying\0A\00", [33 x i8] zeroinitializer }, align 32
@mppe_compress._entry_ptr.23 = internal global ptr @mppe_compress._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mppe_decomp_init\00", [47 x i8] zeroinitializer }, align 32
@mppe_decompress._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.7, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017mppe_decompress[%d]: short pkt (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mppe_decompress\00", [16 x i8] zeroinitializer }, align 32
@mppe_decompress._entry_ptr = internal global ptr @mppe_decompress._entry, section ".printk_index", align 4
@mppe_decompress._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.7, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017mppe_decompress[%d]: osize too small! (have: %d need: %d)\0A\00", [35 x i8] zeroinitializer }, align 32
@mppe_decompress._entry_ptr.29 = internal global ptr @mppe_decompress._entry.27, section ".printk_index", align 4
@mppe_decompress._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.7, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017mppe_decompress[%d]: ccount %d\0A\00", [62 x i8] zeroinitializer }, align 32
@mppe_decompress._entry_ptr.32 = internal global ptr @mppe_decompress._entry.30, section ".printk_index", align 4
@mppe_decompress._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.26, ptr @.str.7, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017mppe_decompress[%d]: ENCRYPTED bit not set!\0A\00", [49 x i8] zeroinitializer }, align 32
@mppe_decompress._entry_ptr.35 = internal global ptr @mppe_decompress._entry.33, section ".printk_index", align 4
@mppe_decompress._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.26, ptr @.str.7, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017mppe_decompress[%d]: FLUSHED bit not set in stateless mode!\0A\00", [33 x i8] zeroinitializer }, align 32
@mppe_decompress._entry_ptr.38 = internal global ptr @mppe_decompress._entry.36, section ".printk_index", align 4
@mppe_decompress._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.26, ptr @.str.7, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017mppe_decompress[%d]: FLUSHED bit not set on flag packet!\0A\00", [36 x i8] zeroinitializer }, align 32
@mppe_decompress._entry_ptr.41 = internal global ptr @mppe_decompress._entry.39, section ".printk_index", align 4
@mppe_incomp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.7, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017mppe_incomp[%d]: incompressible (unencrypted) data! (proto %04x)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mppe_incomp\00", [20 x i8] zeroinitializer }, align 32
@mppe_incomp._entry_ptr = internal global ptr @mppe_incomp._entry, section ".printk_index", align 4
@ppp_mppe_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.7, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016PPP MPPE Compression module registered\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ppp_mppe_init\00", [18 x i8] zeroinitializer }, align 32
@ppp_mppe_init._entry_ptr = internal global ptr @ppp_mppe_init._entry, section ".printk_index", align 4
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 67, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant [9 x i8] c"ppp_mppe\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 633, i32 26 }
@___asan_gen_.58 = private unnamed_addr constant [8 x i8] c"sha_pad\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 80, i32 24 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 187, i32 29 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 312, i32 54 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 266, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 277, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 280, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 353, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 371, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 380, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 418, i32 54 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 443, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 456, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 465, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 470, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 477, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 483, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 616, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.176 = private constant [30 x i8] c"../drivers/net/ppp/ppp_mppe.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 674, i32 3 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_alias230, ptr @__UNIQUE_ID_author226, ptr @__UNIQUE_ID_description227, ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__UNIQUE_ID_version231, ptr @__exitcall_ppp_mppe_cleanup, ptr @__initcall__kmod_ppp_mppe__232_687_ppp_mppe_init6, ptr @__modver_attr, ptr @mppe_compress._entry, ptr @mppe_compress._entry.18, ptr @mppe_compress._entry.21, ptr @mppe_compress._entry_ptr, ptr @mppe_compress._entry_ptr.20, ptr @mppe_compress._entry_ptr.23, ptr @mppe_decompress._entry, ptr @mppe_decompress._entry.27, ptr @mppe_decompress._entry.30, ptr @mppe_decompress._entry.33, ptr @mppe_decompress._entry.36, ptr @mppe_decompress._entry.39, ptr @mppe_decompress._entry_ptr, ptr @mppe_decompress._entry_ptr.29, ptr @mppe_decompress._entry_ptr.32, ptr @mppe_decompress._entry_ptr.35, ptr @mppe_decompress._entry_ptr.38, ptr @mppe_decompress._entry_ptr.41, ptr @mppe_incomp._entry, ptr @mppe_incomp._entry_ptr, ptr @mppe_init._entry, ptr @mppe_init._entry.13, ptr @mppe_init._entry.8, ptr @mppe_init._entry_ptr, ptr @mppe_init._entry_ptr.10, ptr @mppe_init._entry_ptr.15, ptr @ppp_mppe_cleanup, ptr @ppp_mppe_init._entry, ptr @ppp_mppe_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ppp_mppe, ptr @sha_pad, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppp_mppe to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sha_pad to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mppe_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mppe_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mppe_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mppe_compress._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mppe_compress._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mppe_compress._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mppe_decompress._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mppe_decompress._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mppe_decompress._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mppe_decompress._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mppe_decompress._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mppe_decompress._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mppe_incomp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppp_mppe_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ppp_mppe_cleanup() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ppp_unregister_compressor(ptr noundef nonnull @ppp_mppe) #9
  %0 = load ptr, ptr @sha_pad, align 4
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ppp_unregister_compressor(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ppp_mppe_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_has_ahash(ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 80) #12
  store ptr %call7.i, ptr @sha_pad, align 4
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = call ptr @memset(ptr %call7.i, i32 0, i32 40)
  %sha_pad2.i = getelementptr inbounds %struct.sha_pad, ptr %call7.i, i32 0, i32 1
  %2 = call ptr @memset(ptr %sha_pad2.i, i32 242, i32 40)
  %call5 = tail call i32 @ppp_register_compressor(ptr noundef nonnull @ppp_mppe) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #13
  br label %cleanup

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %3 = load ptr, ptr @sha_pad, align 4
  tail call void @kfree(ptr noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call5, %if.else ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mppe_alloc(ptr nocapture noundef readonly %options, i32 noundef %optlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %optlen)
  %cmp.not = icmp eq i32 %optlen, 22
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %options, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %1)
  %cmp1.not = icmp eq i8 %1, 18
  br i1 %cmp1.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr i8, ptr %options, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %3)
  %cmp6.not = icmp eq i8 %3, 6
  br i1 %cmp6.not, label %if.end, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1144) #12
  %cmp8 = icmp eq ptr %call7.i.i, null
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0) #9
  %cmp.i96 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96, label %if.end11.out_free_crit_edge, label %if.end8.i

if.end11.out_free_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.end8.i:                                        ; preds = %if.end11
  %5 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call12, align 128
  %add = add i32 %6, 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #14
  %sha1 = getelementptr inbounds %struct.ppp_mppe_state, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %sha1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.i, ptr %sha1, align 8
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call12, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call12, ptr noundef %base.i.i) #9
  br label %out_free

if.end20:                                         ; preds = %if.end8.i
  %8 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call12, ptr %call9.i, align 128
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call12, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %10, i32 -128
  %11 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %digestsize.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %cmp23 = icmp ult i32 %12, 16
  br i1 %cmp23, label %if.end20.out_free_crit_edge, label %if.end8.i93

if.end20.out_free_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.end8.i93:                                      ; preds = %if.end20
  %call9.i92 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #14
  %sha1_digest = getelementptr inbounds %struct.ppp_mppe_state, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %sha1_digest to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i92, ptr %sha1_digest, align 4
  %tobool29.not = icmp eq ptr %call9.i92, null
  br i1 %tobool29.not, label %if.end8.i93.out_free_crit_edge, label %if.end31

if.end8.i93.out_free_crit_edge:                   ; preds = %if.end8.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.end31:                                         ; preds = %if.end8.i93
  call void @__sanitizer_cov_trace_pc() #11
  %master_key = getelementptr inbounds %struct.ppp_mppe_state, ptr %call7.i.i, i32 0, i32 3
  %arrayidx32 = getelementptr i8, ptr %options, i32 6
  %14 = call ptr @memcpy(ptr %master_key, ptr %arrayidx32, i32 16)
  %session_key = getelementptr inbounds %struct.ppp_mppe_state, ptr %call7.i.i, i32 0, i32 4
  %15 = call ptr @memcpy(ptr %session_key, ptr %arrayidx32, i32 16)
  br label %cleanup

out_free:                                         ; preds = %if.end8.i93.out_free_crit_edge, %if.end20.out_free_crit_edge, %if.then19, %if.end11.out_free_crit_edge
  %sha1_digest36 = getelementptr inbounds %struct.ppp_mppe_state, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %sha1_digest36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sha1_digest36, align 4
  tail call void @kfree(ptr noundef %17) #9
  %sha137 = getelementptr inbounds %struct.ppp_mppe_state, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %sha137 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sha137, align 8
  %tobool38.not = icmp eq ptr %19, null
  br i1 %tobool38.not, label %out_free.if.end43_crit_edge, label %if.then39

out_free.if.end43_crit_edge:                      ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then39:                                        ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %base.i.i97 = getelementptr inbounds %struct.crypto_shash, ptr %21, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %21, ptr noundef %base.i.i97) #9
  %22 = ptrtoint ptr %sha137 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sha137, align 8
  tail call void @kfree_sensitive(ptr noundef %23) #9
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %out_free.if.end43_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end31, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end31 ], [ null, %if.end.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %lor.lhs.false3.cleanup_crit_edge ], [ null, %if.end43 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mppe_free(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sha1_digest = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 2
  %0 = ptrtoint ptr %sha1_digest to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sha1_digest, align 4
  tail call void @kfree(ptr noundef %1) #9
  %sha1 = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %sha1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sha1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %5, ptr noundef %base.i.i) #9
  %6 = ptrtoint ptr %sha1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sha1, align 8
  tail call void @kfree_sensitive(ptr noundef %7) #9
  tail call void @kfree_sensitive(ptr noundef nonnull %arg) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mppe_comp_init(ptr noundef %arg, ptr nocapture noundef readonly %options, i32 noundef %optlen, i32 noundef %unit, i32 noundef %hdrlen, i32 noundef %debug) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mppe_init(ptr noundef %arg, ptr noundef %options, i32 noundef %optlen, i32 noundef %unit, i32 noundef %debug, ptr noundef nonnull @.str.4)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mppe_comp_reset(ptr nocapture noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bits = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 6
  %0 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bits, align 4
  %2 = or i8 %1, -128
  store i8 %2, ptr %bits, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mppe_compress(ptr noundef %arg, ptr noundef %ibuf, ptr noundef %obuf, i32 noundef %isize, i32 noundef %osize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %ibuf, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx1 = getelementptr i8, ptr %ibuf, i32 3
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %add = or i32 %shl, %conv2
  %4 = add nsw i32 %add, -251
  call void @__sanitizer_cov_trace_const_cmp4(i32 -218, i32 %4)
  %5 = icmp ult i32 %4, -218
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add7 = add i32 %isize, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add7, i32 %osize)
  %cmp8 = icmp sgt i32 %add7, %osize
  br i1 %cmp8, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %unit = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 11
  %6 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %unit, align 8
  %add12 = add i32 %osize, 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %7, i32 noundef %osize, i32 noundef %add12) #13
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %8 = ptrtoint ptr %ibuf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ibuf, align 1
  %10 = ptrtoint ptr %obuf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %obuf, align 1
  %arrayidx18 = getelementptr i8, ptr %ibuf, i32 1
  %11 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx18, align 1
  %arrayidx19 = getelementptr i8, ptr %obuf, i32 1
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx19, align 1
  %add.ptr = getelementptr i8, ptr %obuf, i32 2
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 253, ptr %add.ptr, align 1
  %add.ptr20 = getelementptr i8, ptr %obuf, i32 4
  %ccount = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 7
  %15 = ptrtoint ptr %ccount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ccount, align 8
  %add21 = add i32 %16, 1
  %rem = and i32 %add21, 4095
  store i32 %rem, ptr %ccount, align 8
  %debug = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 12
  %17 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %18)
  %cmp23 = icmp sgt i32 %18, 6
  br i1 %cmp23, label %do.end28, label %if.end13.if.end33_crit_edge

if.end13.if.end33_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

do.end28:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %unit30 = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 11
  %19 = ptrtoint ptr %unit30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %unit30, align 8
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %20, i32 noundef %rem) #13
  br label %if.end33

if.end33:                                         ; preds = %do.end28, %if.end13.if.end33_crit_edge
  %21 = ptrtoint ptr %ccount to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ccount, align 8
  %conv35 = trunc i32 %22 to i16
  %23 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %conv35, ptr %add.ptr20, align 1
  %stateful = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 8
  %24 = ptrtoint ptr %stateful to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stateful, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %if.end33.if.end56_crit_edge, label %lor.lhs.false36

if.end33.if.end56_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

lor.lhs.false36:                                  ; preds = %if.end33
  %26 = ptrtoint ptr %ccount to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ccount, align 8
  %and = and i32 %27, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and)
  %cmp38 = icmp eq i32 %and, 255
  br i1 %cmp38, label %lor.lhs.false36.if.then44_crit_edge, label %lor.lhs.false40

lor.lhs.false36.if.then44_crit_edge:              ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

lor.lhs.false40:                                  ; preds = %lor.lhs.false36
  %bits = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 6
  %28 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bits, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %29)
  %tobool43.not = icmp sgt i8 %29, -1
  br i1 %tobool43.not, label %lor.lhs.false40.if.end60_crit_edge, label %lor.lhs.false40.if.then44_crit_edge

lor.lhs.false40.if.then44_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

lor.lhs.false40.if.end60_crit_edge:               ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then44:                                        ; preds = %lor.lhs.false40.if.then44_crit_edge, %lor.lhs.false36.if.then44_crit_edge
  %30 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool46.not = icmp eq i32 %31, 0
  br i1 %tobool46.not, label %if.then44.if.end56_crit_edge, label %do.end52.critedge

if.then44.if.end56_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

do.end52.critedge:                                ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  %unit54 = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 11
  %32 = ptrtoint ptr %unit54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %unit54, align 8
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %33) #13
  br label %if.end56

if.end56:                                         ; preds = %do.end52.critedge, %if.then44.if.end56_crit_edge, %if.end33.if.end56_crit_edge
  tail call fastcc void @mppe_rekey(ptr noundef %arg, i32 noundef 0)
  %bits57 = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 6
  %34 = ptrtoint ptr %bits57 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bits57, align 4
  %36 = or i8 %35, -128
  store i8 %36, ptr %bits57, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.end56, %lor.lhs.false40.if.end60_crit_edge
  %bits61 = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 6
  %37 = ptrtoint ptr %bits61 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bits61, align 4
  %39 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %add.ptr20, align 1
  %or65122 = or i8 %40, %38
  store i8 %or65122, ptr %add.ptr20, align 1
  %41 = load i8, ptr %bits61, align 4
  %42 = and i8 %41, 127
  store i8 %42, ptr %bits61, align 4
  %add.ptr71 = getelementptr i8, ptr %obuf, i32 6
  %sub = add i32 %isize, -2
  tail call void @arc4_crypt(ptr noundef %arg, ptr noundef %add.ptr71, ptr noundef %arrayidx, i32 noundef %sub) #9
  %stats = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 13
  %43 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %stats, align 8
  %add73 = add i32 %44, %sub
  store i32 %add73, ptr %stats, align 8
  %unc_packets = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 13, i32 1
  %45 = ptrtoint ptr %unc_packets to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %unc_packets, align 4
  %inc = add i32 %46, 1
  store i32 %inc, ptr %unc_packets, align 4
  %comp_bytes = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 13, i32 2
  %47 = ptrtoint ptr %comp_bytes to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %comp_bytes, align 8
  %add76 = add i32 %48, %add7
  store i32 %add76, ptr %comp_bytes, align 8
  %comp_packets = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 13, i32 3
  %49 = ptrtoint ptr %comp_packets to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %comp_packets, align 4
  %inc78 = add i32 %50, 1
  store i32 %inc78, ptr %comp_packets, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ %add7, %if.end60 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mppe_comp_stats(ptr nocapture noundef readonly %arg, ptr nocapture noundef writeonly %stats) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 13
  %0 = call ptr @memcpy(ptr %stats, ptr %stats1, i32 40)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mppe_decomp_init(ptr noundef %arg, ptr nocapture noundef readonly %options, i32 noundef %optlen, i32 noundef %unit, i32 noundef %hdrlen, i32 noundef %mru, i32 noundef %debug) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mppe_init(ptr noundef %arg, ptr noundef %options, i32 noundef %optlen, i32 noundef %unit, i32 noundef %debug, ptr noundef nonnull @.str.24)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mppe_decomp_reset(ptr nocapture noundef %arg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mppe_decompress(ptr noundef %arg, ptr noundef %ibuf, i32 noundef %isize, ptr noundef %obuf, i32 noundef %osize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %ibuf, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %and1 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %isize)
  %cmp = icmp slt i32 %isize, 7
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 12
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %unit = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 11
  %4 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %unit, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %5, i32 noundef %isize) #13
  br label %cleanup

if.end4:                                          ; preds = %entry
  %sub5 = add nsw i32 %isize, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5, i32 %osize)
  %cmp6 = icmp sgt i32 %sub5, %osize
  br i1 %cmp6, label %do.end11, label %if.end17

do.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %unit13 = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 11
  %6 = ptrtoint ptr %unit13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %unit13, align 8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %7, i32 noundef %osize, i32 noundef %sub5) #13
  br label %cleanup

if.end17:                                         ; preds = %if.end4
  %sub19 = add nsw i32 %isize, -4
  %and22 = shl nuw nsw i32 %conv, 8
  %shl = and i32 %and22, 3840
  %arrayidx23 = getelementptr i8, ptr %ibuf, i32 5
  %8 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %9 to i32
  %add = or i32 %shl, %conv24
  %debug25 = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 12
  %10 = ptrtoint ptr %debug25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %cmp26 = icmp sgt i32 %11, 6
  br i1 %cmp26, label %do.end31, label %if.end17.if.end35_crit_edge

if.end17.if.end35_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end31:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %unit33 = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 11
  %12 = ptrtoint ptr %unit33 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %unit33, align 8
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %13, i32 noundef %add) #13
  br label %if.end35

if.end35:                                         ; preds = %do.end31, %if.end17.if.end35_crit_edge
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %16 = and i8 %15, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool40.not = icmp eq i8 %16, 0
  br i1 %tobool40.not, label %if.end35.sanity_error.sink.split_crit_edge, label %if.end49

if.end35.sanity_error.sink.split_crit_edge:       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %sanity_error.sink.split

if.end49:                                         ; preds = %if.end35
  %stateful = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 8
  %17 = ptrtoint ptr %stateful to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stateful, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool50.not = icmp eq i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool51.not = icmp eq i32 %and1, 0
  %or.cond = select i1 %tobool50.not, i1 %tobool51.not, i1 false
  br i1 %or.cond, label %if.end49.sanity_error.sink.split_crit_edge, label %if.end61

if.end49.sanity_error.sink.split_crit_edge:       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %sanity_error.sink.split

if.end61:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool63.not = icmp ne i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp66 = icmp eq i8 %9, -1
  %or.cond245 = select i1 %tobool63.not, i1 %cmp66, i1 false
  %or.cond246 = select i1 %or.cond245, i1 %tobool51.not, i1 false
  br i1 %or.cond246, label %if.end61.sanity_error.sink.split_crit_edge, label %if.end79

if.end61.sanity_error.sink.split_crit_edge:       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sanity_error.sink.split

if.end79:                                         ; preds = %if.end61
  br i1 %tobool50.not, label %if.then82, label %if.else

if.then82:                                        ; preds = %if.end79
  %ccount83 = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 7
  %19 = ptrtoint ptr %ccount83 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ccount83, align 8
  %sub84 = sub i32 %add, %20
  %rem = and i32 %sub84, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %rem)
  %cmp85 = icmp ugt i32 %rem, 2048
  br i1 %cmp85, label %if.then82.sanity_error_crit_edge, label %while.cond.preheader

if.then82.sanity_error_crit_edge:                 ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  br label %sanity_error

while.cond.preheader:                             ; preds = %if.then82
  %21 = ptrtoint ptr %ccount83 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ccount83, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %add)
  %cmp91.not249 = icmp eq i32 %22, %add
  br i1 %cmp91.not249, label %while.cond.preheader.if.end132_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end132_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  tail call fastcc void @mppe_rekey(ptr noundef %arg, i32 noundef 0)
  %23 = ptrtoint ptr %ccount83 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ccount83, align 8
  %add94 = add i32 %24, 1
  %rem95 = and i32 %add94, 4095
  store i32 %rem95, ptr %ccount83, align 8
  %cmp91.not = icmp eq i32 %rem95, %add
  br i1 %cmp91.not, label %while.body.if.end132_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.if.end132_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.else:                                          ; preds = %if.end79
  %discard = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 9
  %25 = ptrtoint ptr %discard to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %discard, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool97.not = icmp eq i32 %26, 0
  br i1 %tobool97.not, label %if.then98, label %if.else109

if.then98:                                        ; preds = %if.else
  %ccount99 = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 7
  %27 = ptrtoint ptr %ccount99 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ccount99, align 8
  %add100 = add i32 %28, 1
  %rem101 = and i32 %add100, 4095
  store i32 %rem101, ptr %ccount99, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %rem101)
  %cmp104.not = icmp eq i32 %add, %rem101
  br i1 %cmp104.not, label %if.then98.if.end128_crit_edge, label %if.then106

if.then98.if.end128_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128

if.then106:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %discard to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %discard, align 8
  br label %cleanup

if.else109:                                       ; preds = %if.else
  br i1 %tobool51.not, label %if.else109.cleanup_crit_edge, label %while.cond113.preheader

if.else109.cleanup_crit_edge:                     ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond113.preheader:                          ; preds = %if.else109
  %ccount115 = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 7
  %30 = ptrtoint ptr %ccount115 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ccount115, align 8
  %and116247 = and i32 %31, -256
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %and116247)
  %cmp117.not248 = icmp eq i32 %shl, %and116247
  br i1 %cmp117.not248, label %while.cond113.preheader.while.end124_crit_edge, label %while.cond113.preheader.while.body119_crit_edge

while.cond113.preheader.while.body119_crit_edge:  ; preds = %while.cond113.preheader
  br label %while.body119

while.cond113.preheader.while.end124_crit_edge:   ; preds = %while.cond113.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end124

while.body119:                                    ; preds = %while.body119.while.body119_crit_edge, %while.cond113.preheader.while.body119_crit_edge
  tail call fastcc void @mppe_rekey(ptr noundef %arg, i32 noundef 0)
  %32 = ptrtoint ptr %ccount115 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ccount115, align 8
  %add121 = add i32 %33, 256
  %rem122 = and i32 %add121, 4095
  store i32 %rem122, ptr %ccount115, align 8
  %and116 = and i32 %add121, 3840
  %cmp117.not = icmp eq i32 %shl, %and116
  br i1 %cmp117.not, label %while.body119.while.end124_crit_edge, label %while.body119.while.body119_crit_edge

while.body119.while.body119_crit_edge:            ; preds = %while.body119
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body119

while.body119.while.end124_crit_edge:             ; preds = %while.body119
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end124

while.end124:                                     ; preds = %while.body119.while.end124_crit_edge, %while.cond113.preheader.while.end124_crit_edge
  %34 = ptrtoint ptr %discard to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %discard, align 8
  %35 = ptrtoint ptr %ccount115 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add, ptr %ccount115, align 8
  br label %if.end128

if.end128:                                        ; preds = %while.end124, %if.then98.if.end128_crit_edge
  br i1 %tobool51.not, label %if.end128.if.end132_crit_edge, label %if.then130

if.end128.if.end132_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.then130:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mppe_rekey(ptr noundef %arg, i32 noundef 0)
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %if.end128.if.end132_crit_edge, %while.body.if.end132_crit_edge, %while.cond.preheader.if.end132_crit_edge
  %36 = ptrtoint ptr %ibuf to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ibuf, align 1
  %38 = ptrtoint ptr %obuf to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %obuf, align 1
  %arrayidx135 = getelementptr i8, ptr %ibuf, i32 1
  %39 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx135, align 1
  %arrayidx136 = getelementptr i8, ptr %obuf, i32 1
  %41 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx136, align 1
  %add.ptr = getelementptr i8, ptr %obuf, i32 2
  %add.ptr137 = getelementptr i8, ptr %ibuf, i32 6
  %sub138 = add i32 %isize, -6
  tail call void @arc4_crypt(ptr noundef %arg, ptr noundef %add.ptr, ptr noundef %add.ptr137, i32 noundef 1) #9
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr, align 1
  %44 = and i8 %43, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp142.not = icmp eq i8 %44, 0
  br i1 %cmp142.not, label %if.end132.if.end149_crit_edge, label %if.then144

if.end132.if.end149_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

if.then144:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx146 = getelementptr i8, ptr %obuf, i32 3
  %45 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %43, ptr %arrayidx146, align 1
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %add.ptr, align 1
  br label %if.end149

if.end149:                                        ; preds = %if.then144, %if.end132.if.end149_crit_edge
  %osize.addr.0 = phi i32 [ %sub5, %if.then144 ], [ %sub19, %if.end132.if.end149_crit_edge ]
  %47 = phi i32 [ 3, %if.then144 ], [ 2, %if.end132.if.end149_crit_edge ]
  %48 = getelementptr i8, ptr %obuf, i32 %47
  %add.ptr151 = getelementptr i8, ptr %48, i32 1
  %add.ptr152 = getelementptr i8, ptr %ibuf, i32 7
  %sub153 = add i32 %isize, -7
  tail call void @arc4_crypt(ptr noundef %arg, ptr noundef %add.ptr151, ptr noundef %add.ptr152, i32 noundef %sub153) #9
  %stats = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 13
  %49 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %stats, align 8
  %add154 = add i32 %50, %osize.addr.0
  store i32 %add154, ptr %stats, align 8
  %unc_packets = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 13, i32 1
  %51 = ptrtoint ptr %unc_packets to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %unc_packets, align 4
  %inc156 = add i32 %52, 1
  store i32 %inc156, ptr %unc_packets, align 4
  %comp_bytes = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 13, i32 2
  %53 = ptrtoint ptr %comp_bytes to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %comp_bytes, align 8
  %add158 = add i32 %sub138, %54
  store i32 %add158, ptr %comp_bytes, align 8
  %comp_packets = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 13, i32 3
  %55 = ptrtoint ptr %comp_packets to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %comp_packets, align 4
  %inc160 = add i32 %56, 1
  store i32 %inc160, ptr %comp_packets, align 4
  %sanity_errors161 = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 10
  %57 = ptrtoint ptr %sanity_errors161 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sanity_errors161, align 4
  %shr = ashr i32 %58, 1
  store i32 %shr, ptr %sanity_errors161, align 4
  br label %cleanup

sanity_error.sink.split:                          ; preds = %if.end61.sanity_error.sink.split_crit_edge, %if.end49.sanity_error.sink.split_crit_edge, %if.end35.sanity_error.sink.split_crit_edge
  %.str.40.sink = phi ptr [ @.str.34, %if.end35.sanity_error.sink.split_crit_edge ], [ @.str.37, %if.end49.sanity_error.sink.split_crit_edge ], [ @.str.40, %if.end61.sanity_error.sink.split_crit_edge ]
  %unit75 = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 11
  %59 = ptrtoint ptr %unit75 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %unit75, align 8
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.40.sink, i32 noundef %60) #13
  br label %sanity_error

sanity_error:                                     ; preds = %sanity_error.sink.split, %if.then82.sanity_error_crit_edge
  %.sink250 = phi i32 [ 1, %if.then82.sanity_error_crit_edge ], [ 100, %sanity_error.sink.split ]
  %sanity_errors88 = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 10
  %61 = ptrtoint ptr %sanity_errors88 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sanity_errors88, align 4
  %inc = add i32 %62, %.sink250
  store i32 %inc, ptr %sanity_errors88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600, i32 %inc)
  %cmp163 = icmp slt i32 %inc, 1600
  %. = select i1 %cmp163, i32 -1, i32 -2
  br label %cleanup

cleanup:                                          ; preds = %sanity_error, %if.end149, %if.else109.cleanup_crit_edge, %if.then106, %do.end11, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end11 ], [ %osize.addr.0, %if.end149 ], [ -1, %if.then106 ], [ -1, %do.end ], [ -1, %if.then.cleanup_crit_edge ], [ -1, %if.else109.cleanup_crit_edge ], [ %., %sanity_error ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mppe_incomp(ptr nocapture noundef %arg, ptr nocapture noundef readonly %ibuf, i32 noundef %icnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 12
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr i8, ptr %ibuf, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx1 = getelementptr i8, ptr %ibuf, i32 3
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %5 to i32
  %add = or i32 %shl, %conv2
  %6 = add nsw i32 %add, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 218, i32 %6)
  %7 = icmp ult i32 %6, 218
  br i1 %7, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %unit = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 11
  %8 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %unit, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %9, i32 noundef %add) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %stats = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 13
  %inc_bytes = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 13, i32 4
  %10 = ptrtoint ptr %inc_bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inc_bytes, align 8
  %add19 = add i32 %11, %icnt
  store i32 %add19, ptr %inc_bytes, align 8
  %inc_packets = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 13, i32 5
  %12 = ptrtoint ptr %inc_packets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %inc_packets, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %inc_packets, align 4
  %14 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stats, align 8
  %add22 = add i32 %15, %icnt
  store i32 %add22, ptr %stats, align 8
  %unc_packets = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 13, i32 1
  %16 = ptrtoint ptr %unc_packets to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %unc_packets, align 4
  %inc24 = add i32 %17, 1
  store i32 %inc24, ptr %unc_packets, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mppe_init(ptr noundef %arg, ptr nocapture noundef readonly %options, i32 noundef %optlen, i32 noundef %unit, i32 noundef %debug, ptr noundef %debugstr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %optlen)
  %cmp.not = icmp eq i32 %optlen, 6
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %options, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %1)
  %cmp1.not = icmp eq i8 %1, 18
  br i1 %cmp1.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr i8, ptr %options, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %3)
  %cmp6.not = icmp eq i8 %3, 6
  br i1 %cmp6.not, label %do.body, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false3
  %arrayidx8 = getelementptr i8, ptr %options, i32 2
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx8, align 1
  %6 = shl i8 %5, 2
  %7 = and i8 %6, 4
  %arrayidx15 = getelementptr i8, ptr %options, i32 5
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx15, align 1
  %10 = lshr i8 %9, 5
  %11 = and i8 %10, 2
  %12 = or i8 %11, %7
  %13 = and i8 %10, 1
  %14 = or i8 %12, %13
  %15 = xor i8 %14, 4
  %16 = or i8 %15, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool36.not173 = icmp slt i8 %9, 0
  %mppe_opts.3 = select i1 %tobool36.not173, i8 %16, i8 %15
  %17 = or i8 %mppe_opts.3, 64
  %arrayidx69 = getelementptr i8, ptr %options, i32 3
  %18 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx69, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool71.not = icmp eq i8 %19, 0
  br i1 %tobool71.not, label %lor.lhs.false72, label %do.body.if.then76_crit_edge

do.body.if.then76_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

lor.lhs.false72:                                  ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %tobool63.not = icmp ult i8 %5, 2
  %mppe_opts.6 = select i1 %tobool63.not, i8 %mppe_opts.3, i8 %17
  %arrayidx73 = getelementptr i8, ptr %options, i32 4
  %20 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx73, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool75.not = icmp eq i8 %21, 0
  br i1 %tobool75.not, label %lor.lhs.false72.if.end80_crit_edge, label %lor.lhs.false72.if.then76_crit_edge

lor.lhs.false72.if.then76_crit_edge:              ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

lor.lhs.false72.if.end80_crit_edge:               ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then76:                                        ; preds = %lor.lhs.false72.if.then76_crit_edge, %do.body.if.then76_crit_edge
  br label %if.end80

if.end80:                                         ; preds = %if.then76, %lor.lhs.false72.if.end80_crit_edge
  %mppe_opts.7 = phi i8 [ %17, %if.then76 ], [ %mppe_opts.6, %lor.lhs.false72.if.end80_crit_edge ]
  %22 = and i8 %9, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool84.not = icmp eq i8 %22, 0
  %spec.select172 = select i1 %tobool84.not, i8 %mppe_opts.7, i8 %17
  %conv90 = zext i8 %spec.select172 to i32
  %and91 = and i32 %conv90, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.else, label %if.end80.if.end104_crit_edge

if.end80.if.end104_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.else:                                          ; preds = %if.end80
  %and95 = and i32 %conv90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %do.end102, label %if.else.if.end104_crit_edge

if.else.if.end104_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

do.end102:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %debugstr, i32 noundef %unit) #13
  br label %cleanup

if.end104:                                        ; preds = %if.else.if.end104_crit_edge, %if.end80.if.end104_crit_edge
  %.sink = phi i32 [ 16, %if.end80.if.end104_crit_edge ], [ 8, %if.else.if.end104_crit_edge ]
  %keylen98 = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 5
  %23 = ptrtoint ptr %keylen98 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %keylen98, align 8
  %and106 = and i32 %conv90, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.end104.if.end109_crit_edge, label %if.then108

if.end104.if.end109_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.then108:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  %stateful = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 8
  %24 = ptrtoint ptr %stateful to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %stateful, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %if.end104.if.end109_crit_edge
  tail call fastcc void @mppe_rekey(ptr noundef %arg, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %debug)
  %tobool110.not = icmp eq i32 %debug, 0
  br i1 %tobool110.not, label %if.end109.if.end129_crit_edge, label %do.end114

if.end109.if.end129_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

do.end114:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  %keylen116 = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 5
  %25 = ptrtoint ptr %keylen116 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %keylen116, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %26)
  %cmp117 = icmp eq i32 %26, 16
  %cond = select i1 %cmp117, i32 128, i32 40
  %stateful119 = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 8
  %27 = ptrtoint ptr %stateful119 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stateful119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool120.not = icmp eq i32 %28, 0
  %cond121 = select i1 %tobool120.not, ptr @.str.12, ptr @.str.11
  %call122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %debugstr, i32 noundef %unit, i32 noundef %cond, ptr noundef nonnull %cond121) #13
  %master_key = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 3
  %session_key = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 4
  %call128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %debugstr, i32 noundef %unit, i32 noundef 16, ptr noundef %master_key, i32 noundef 16, ptr noundef %session_key) #13
  br label %if.end129

if.end129:                                        ; preds = %do.end114, %if.end109.if.end129_crit_edge
  %ccount = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 7
  %29 = ptrtoint ptr %ccount to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4095, ptr %ccount, align 8
  %bits = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 6
  %30 = ptrtoint ptr %bits to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 16, ptr %bits, align 4
  %unit130 = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 11
  %31 = ptrtoint ptr %unit130 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %unit, ptr %unit130, align 8
  %debug131 = getelementptr inbounds %struct.ppp_mppe_state, ptr %arg, i32 0, i32 12
  %32 = ptrtoint ptr %debug131 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %debug, ptr %debug131, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end129, %do.end102, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end129 ], [ 0, %do.end102 ], [ 0, %lor.lhs.false3.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mppe_rekey(ptr noundef %state, i32 noundef %initial_key) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sha1.i = getelementptr inbounds %struct.ppp_mppe_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %sha1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sha1.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i.i.i.i, align 128
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.get_new_key_from_sha.exit_crit_edge

entry.get_new_key_from_sha.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_new_key_from_sha.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 -256
  %8 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i.i.i, align 128
  %call3.i.i = tail call i32 %9(ptr noundef %1) #9
  br label %get_new_key_from_sha.exit

get_new_key_from_sha.exit:                        ; preds = %if.end.i.i, %entry.get_new_key_from_sha.exit_crit_edge
  %10 = ptrtoint ptr %sha1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sha1.i, align 8
  %master_key.i = getelementptr inbounds %struct.ppp_mppe_state, ptr %state, i32 0, i32 3
  %keylen.i = getelementptr inbounds %struct.ppp_mppe_state, ptr %state, i32 0, i32 5
  %12 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %keylen.i, align 8
  %call2.i = tail call i32 @crypto_shash_update(ptr noundef %11, ptr noundef %master_key.i, i32 noundef %13) #9
  %14 = ptrtoint ptr %sha1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sha1.i, align 8
  %16 = load ptr, ptr @sha_pad, align 4
  %call5.i = tail call i32 @crypto_shash_update(ptr noundef %15, ptr noundef %16, i32 noundef 40) #9
  %17 = ptrtoint ptr %sha1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sha1.i, align 8
  %session_key.i = getelementptr inbounds %struct.ppp_mppe_state, ptr %state, i32 0, i32 4
  %19 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %keylen.i, align 8
  %call9.i = tail call i32 @crypto_shash_update(ptr noundef %18, ptr noundef %session_key.i, i32 noundef %20) #9
  %21 = ptrtoint ptr %sha1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sha1.i, align 8
  %23 = load ptr, ptr @sha_pad, align 4
  %sha_pad2.i = getelementptr inbounds %struct.sha_pad, ptr %23, i32 0, i32 1
  %call12.i = tail call i32 @crypto_shash_update(ptr noundef %22, ptr noundef %sha_pad2.i, i32 noundef 40) #9
  %24 = ptrtoint ptr %sha1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sha1.i, align 8
  %sha1_digest.i = getelementptr inbounds %struct.ppp_mppe_state, ptr %state, i32 0, i32 2
  %26 = ptrtoint ptr %sha1_digest.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sha1_digest.i, align 4
  %call14.i = tail call i32 @crypto_shash_final(ptr noundef %25, ptr noundef %27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %initial_key)
  %tobool.not = icmp eq i32 %initial_key, 0
  %28 = ptrtoint ptr %sha1_digest.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sha1_digest.i, align 4
  %30 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %keylen.i, align 8
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %get_new_key_from_sha.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @arc4_setkey(ptr noundef %state, ptr noundef %29, i32 noundef %31) #9
  %32 = ptrtoint ptr %sha1_digest.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sha1_digest.i, align 4
  %34 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %keylen.i, align 8
  tail call void @arc4_crypt(ptr noundef %state, ptr noundef %session_key.i, ptr noundef %33, i32 noundef %35) #9
  br label %if.end

if.else:                                          ; preds = %get_new_key_from_sha.exit
  call void @__sanitizer_cov_trace_pc() #11
  %36 = call ptr @memcpy(ptr %session_key.i, ptr %29, i32 %31)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %37 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %keylen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %38)
  %cmp = icmp eq i32 %38, 8
  br i1 %cmp, label %if.then9, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %session_key.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -47, ptr %session_key.i, align 8
  %arrayidx12 = getelementptr %struct.ppp_mppe_state, ptr %state, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 38, ptr %arrayidx12, align 1
  %arrayidx14 = getelementptr %struct.ppp_mppe_state, ptr %state, i32 0, i32 4, i32 2
  %41 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -98, ptr %arrayidx14, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.end.if.end15_crit_edge
  %call20 = tail call i32 @arc4_setkey(ptr noundef %state, ptr noundef %session_key.i, i32 noundef %38) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arc4_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arc4_crypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_has_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ppp_register_compressor(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__UNIQUE_ID_author226, !1, !"__UNIQUE_ID_author226", i1 false, i1 false}
!1 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 63, i32 1}
!2 = !{ptr @__UNIQUE_ID_description227, !3, !"__UNIQUE_ID_description227", i1 false, i1 false}
!3 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 64, i32 1}
!4 = !{ptr @__UNIQUE_ID_file228, !5, !"__UNIQUE_ID_file228", i1 false, i1 false}
!5 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 65, i32 1}
!6 = !{ptr @__UNIQUE_ID_license229, !5, !"__UNIQUE_ID_license229", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias230, !8, !"__UNIQUE_ID_alias230", i1 false, i1 false}
!8 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 66, i32 1}
!9 = !{ptr @__UNIQUE_ID_version231, !10, !"__UNIQUE_ID_version231", i1 false, i1 false}
!10 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 67, i32 1}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__modver_attr, !10, !"__modver_attr", i1 false, i1 false}
!15 = !{ptr @__initcall__kmod_ppp_mppe__232_687_ppp_mppe_init6, !16, !"__initcall__kmod_ppp_mppe__232_687_ppp_mppe_init6", i1 false, i1 false}
!16 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 687, i32 1}
!17 = !{ptr @__exitcall_ppp_mppe_cleanup, !18, !"__exitcall_ppp_mppe_cleanup", i1 false, i1 false}
!18 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 688, i32 1}
!19 = !{ptr @sha_pad, !20, !"sha_pad", i1 false, i1 false}
!20 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 80, i32 24}
!21 = !{ptr @ppp_mppe, !22, !"ppp_mppe", i1 false, i1 false}
!22 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 633, i32 26}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 187, i32 29}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 312, i32 54}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 266, i32 3}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mppe_init._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @mppe_init._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 277, i32 3}
!35 = !{ptr @mppe_init._entry.8, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mppe_init._entry_ptr.10, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 280, i32 3}
!41 = !{ptr @mppe_init._entry.13, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mppe_init._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 353, i32 3}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @mppe_compress._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @mppe_compress._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 371, i32 3}
!50 = !{ptr @mppe_compress._entry.18, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mppe_compress._entry_ptr.20, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 380, i32 4}
!54 = !{ptr @mppe_compress._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mppe_compress._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 418, i32 54}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 443, i32 4}
!60 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mppe_decompress._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @mppe_decompress._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 456, i32 3}
!65 = !{ptr @mppe_decompress._entry.27, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @mppe_decompress._entry_ptr.29, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 465, i32 3}
!69 = !{ptr @mppe_decompress._entry.30, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @mppe_decompress._entry_ptr.32, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 470, i32 3}
!73 = !{ptr @mppe_decompress._entry.33, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @mppe_decompress._entry_ptr.35, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 477, i32 3}
!77 = !{ptr @mppe_decompress._entry.36, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @mppe_decompress._entry_ptr.38, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 483, i32 3}
!81 = !{ptr @mppe_decompress._entry.39, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @mppe_decompress._entry_ptr.41, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 616, i32 3}
!85 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @mppe_incomp._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @mppe_incomp._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ppp/ppp_mppe.c", i32 674, i32 3}
!90 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ppp_mppe_init._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @ppp_mppe_init._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
